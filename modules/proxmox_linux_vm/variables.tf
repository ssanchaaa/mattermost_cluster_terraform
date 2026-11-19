variable "vm_id" {
  type        = number
  description = "The unique digital ID of the virtual machine in Proxmox"
}

variable "vm_name" {
  type        = string
  description = "The name of the virtual machine"
}

variable "description" {
  type        = string
  default     = "Managed by Terraform"
  description = "The description text for the virtual machine"
}

variable "tags" {
  type        = list(string)
  default     = ["linux", "terraform"]
  description = "Tags for resource grouping in the Proxmox UI"
}

variable "node_name" {
  type        = string
  default     = "proxmox"
  description = "The name of the physical Proxmox node"
}

variable "cores" {
  type        = number
  default     = 2
  description = "The number of CPU cores (vCPU)"
}

variable "memory" {
  type        = number
  default     = 2048
  description = "The amount of RAM dedicated to the VM in Megabytes"
}

variable "datastore_id" {
  type        = string
  default     = "local-lvm"
  description = "The Proxmox storage pool ID where the VM disks will be located"
}

variable "disk_size" {
  type        = number
  default     = 20
  description = "The size of the main storage disk in Gigabytes"
}

variable "bridge" {
  type        = string
  default     = "vmbr0"
  description = "The Proxmox network bridge interface"
}

variable "vlan_tag" {
  type        = number
  default     = null
  description = "The optional VLAN tag ID for network isolation"
}

variable "template_vm_id" {
  type        = number
  description = "The ID of the base Cloud-Init template VM to clone from"
}

variable "ssh_user" {
  type        = string
  default     = "pavel"
  description = "The default system username created via Cloud-Init"
}

variable "ssh_keys" {
  type        = list(string)
  description = "A list of authorized public SSH keys for passwordless login"
}
