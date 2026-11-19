terraform {
  required_version = ">= 1.5.0"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.121.0"
    }
  }
}

resource "proxmox_virtual_environment_vm" "linux_vm" {
  vm_id       = var.vm_id
  name        = var.vm_name
  description = var.description
  tags        = var.tags
  node_name   = var.node_name

  cpu {
    cores   = var.cores
    sockets = 1
    type    = "host"
    numa    = false
  }

  memory {
    dedicated = var.memory
    floating  = var.memory
  }

  scsi_hardware = "virtio-scsi-single"

  # System storage disk configuration
  disk {
    datastore_id = var.datastore_id
    interface    = "scsi0"
    size         = var.disk_size
    file_format  = "raw"
    iothread     = true
    discard      = "on"
  }

  # Virtual network device
  network_device {
    bridge  = var.bridge
    model   = "virtio"
    vlan_id = var.vlan_tag
  }

  # Base template cloning reference
  clone {
    vm_id = var.template_vm_id
  }

  agent {
    enabled = true
    type    = "virtio"
  }

  # Cloud-Init automation framework execution
  initialization {
    datastore_id = var.datastore_id

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_account {
      username = var.ssh_user
      keys     = var.ssh_keys
    }
  }
}
