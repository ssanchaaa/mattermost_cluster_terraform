terraform {
  required_version = ">= 1.5.0"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.121.0"
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.0.91:8006"

  api_token = "terraform-prov@pve!tf-token=bf36d56d-1c7a-4ebe-a475-e561dc3cdd4c"

  # Оставляем true, чтобы игнорировать предупреждения о самоподписанном SSL-сертификате Proxmox
  insecure = true
}

# Project environment deployment for Mattermost server testing
module "mattermost_app1" {
  source = "../../modules/proxmox_linux_vm"

  vm_id          = var.mm_app_01_id
  vm_name        = var.mm_app_01_name
  description    = "Vm mm-app-01-ssnch"
  template_vm_id = 9000 # Your base Cloud-Init Ubuntu 24.04 template ID

  cores     = var.mm_app_01_cores
  memory    = var.mm_app_01_memory
  disk_size = var.mm_app_01_disk_size

  ssh_user = var.mm_app_01_ssh_user
  ssh_keys = var.mm_app_01_ssh_keys

  ip_address = var.mm_app_01_ip_address
}

module "mattermost_db1" {
  source = "../../modules/proxmox_linux_vm"

  vm_id          = var.mm_db_01_id
  vm_name        = var.mm_db_01_name
  description    = "Vm mm-db-01-ssnch"
  template_vm_id = 9000 # Your base Cloud-Init Ubuntu 24.04 template ID

  cores     = var.mm_db_01_cores
  memory    = var.mm_db_01_memory
  disk_size = var.mm_db_01_disk_size

  ssh_user = var.mm_db_01_ssh_user
  ssh_keys = var.mm_db_01_ssh_keys

  ip_address = var.mm_db_01_ip_address
}

module "mattermost_db2" {
  source = "../../modules/proxmox_linux_vm"

  vm_id          = var.mm_db_02_id
  vm_name        = var.mm_db_02_name
  description    = "Vm mm-db-02-ssnch"
  template_vm_id = 9000 # Your base Cloud-Init Ubuntu 24.04 template ID

  cores     = var.mm_db_02_cores
  memory    = var.mm_db_02_memory
  disk_size = var.mm_db_02_disk_size

  ssh_user = var.mm_db_02_ssh_user
  ssh_keys = var.mm_db_02_ssh_keys

  ip_address = var.mm_db_02_ip_address
}

module "mattermost_nginx1" {
  source = "../../modules/proxmox_linux_vm"

  vm_id          = var.mm_nginx_01_id
  vm_name        = var.mm_nginx_01_name
  description    = "Vm mm-nginx-01-ssnch"
  template_vm_id = 9000 # Your base Cloud-Init Ubuntu 24.04 template ID

  cores     = var.mm_nginx_01_cores
  memory    = var.mm_nginx_01_memory
  disk_size = var.mm_nginx_01_disk_size

  ssh_user = var.mm_nginx_01_ssh_user
  ssh_keys = var.mm_nginx_01_ssh_keys

  ip_address = var.mm_nginx_01_ip_address
}
