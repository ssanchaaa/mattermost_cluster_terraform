variable "mm_app_01_name" {
  type        = string
  default     = "mm-app-01-ssnch"
  description = "The Proxmox VM name for app1"
}

variable "mm_app_01_id" {
  type        = number
  description = "The Proxmox VM id for app1"
}

variable "mm_app_02_id" {
  type        = number
  description = "The Proxmox VM id for app2"
}

variable "mm_nginx_01_name" {
  type        = string
  default     = "mm-nginx-01-ssnch"
  description = "The Proxmox VM name for nginx1"
}

variable "mm_nginx_01_id" {
  type        = number
  description = "The Proxmox VM id for nginx1"
}

variable "mm_nginx_02_name" {
  type        = string
  default     = "mm-nginx-02-ssnch"
  description = "The Proxmox VM name for nginx2"
}

variable "mm_nginx_02_id" {
  type        = number
  description = "The Proxmox VM id for nginx2"
}

variable "mm_db_01_name" {
  type        = string
  default     = "mm-db-01-ssnch"
  description = "The Proxmox VM name for db1"
}

variable "mm_db_01_id" {
  type        = number
  description = "The Proxmox VM id for db1"
}

variable "mm_db_02_name" {
  type        = string
  default     = "mm-db-02-ssnch"
  description = "The Proxmox VM name for db2"
}

variable "mm_db_02_id" {
  type        = number
  description = "The Proxmox VM id for db2"
}

variable "mm_app_01_cores" {
  type        = number
  default     = 2
  description = "The number of CPU cores (vCPU) for app1"
}

variable "mm_nginx_01_cores" {
  type        = number
  default     = 2
  description = "The number of CPU cores (vCPU) for nginx1"
}

variable "mm_nginx_02_cores" {
  type        = number
  default     = 2
  description = "The number of CPU cores (vCPU) for nginx2"
}

variable "mm_app_02_cores" {
  type        = number
  default     = 2
  description = "The number of CPU cores (vCPU) for nginx2"
}

variable "mm_db_01_cores" {
  type        = number
  default     = 4
  description = "The number of CPU cores (vCPU) for db1"
}

variable "mm_db_02_cores" {
  type        = number
  default     = 4
  description = "The number of CPU cores (vCPU) for db2"
}

variable "mm_app_01_memory" {
  type        = number
  default     = 4096
  description = "The amount of RAM dedicated to the app1 VM in Megabytes"
}

variable "mm_app_02_memory" {
  type        = number
  default     = 4096
  description = "The amount of RAM dedicated to the app2 VM in Megabytes"
}

variable "mm_nginx_01_memory" {
  type        = number
  default     = 4096
  description = "The amount of RAM dedicated to the nginx1 VM in Megabytes"
}

variable "mm_nginx_02_memory" {
  type        = number
  default     = 4096
  description = "The amount of RAM dedicated to the nginx2 VM in Megabytes"
}

variable "mm_db_01_memory" {
  type        = number
  default     = 4096
  description = "The amount of RAM dedicated to the db1 VM in Megabytes"
}

variable "mm_db_02_memory" {
  type        = number
  default     = 4096
  description = "The amount of RAM dedicated to the db2 VM in Megabytes"
}

variable "mm_app_01_disk_size" {
  type        = number
  default     = 30
  description = "The size of the main storage disk for app1 in Gigabytes"
}

variable "mm_app_02_disk_size" {
  type        = number
  default     = 30
  description = "The size of the main storage disk for app2 in Gigabytes"
}

variable "mm_nginx_01_disk_size" {
  type        = number
  default     = 30
  description = "The size of the main storage disk for nginx1 in Gigabytes"
}

variable "mm_nginx_02_disk_size" {
  type        = number
  default     = 30
  description = "The size of the main storage disk for nginx2 in Gigabytes"
}

variable "mm_db_01_disk_size" {
  type        = number
  default     = 40
  description = "The size of the main storage disk for db1 in Gigabytes"
}

variable "mm_db_02_disk_size" {
  type        = number
  default     = 40
  description = "The size of the main storage disk for db2 in Gigabytes"
}

variable "mm_app_01_ssh_user" {
  type        = string
  default     = "GurzhiiAP"
  description = "User for app1"
}

variable "mm_app_02_ssh_user" {
  type        = string
  default     = "GurzhiiAP"
  description = "User for app2"
}

variable "mm_nginx_01_ssh_user" {
  type        = string
  default     = "GurzhiiAP"
  description = "User for nginx1"
}

variable "mm_nginx_02_ssh_user" {
  type        = string
  default     = "GurzhiiAP"
  description = "User for nginx2"
}

variable "mm_db_01_ssh_user" {
  type        = string
  default     = "GurzhiiAP"
  description = "User for db1"
}

variable "mm_db_02_ssh_user" {
  type        = string
  default     = "GurzhiiAP"
  description = "User for db2"
}

variable "mm_app_01_ssh_keys" {
  type        = list(string)
  description = "List of authorized public SSH keys for app1"
}

variable "mm_app_02_ssh_keys" {
  type        = list(string)
  description = "List of authorized public SSH keys for app2"
}

variable "mm_nginx_01_ssh_keys" {
  type        = list(string)
  description = "List of authorized public SSH keys for nginx1"
}

variable "mm_nginx_02_ssh_keys" {
  type        = list(string)
  description = "List of authorized public SSH keys for nginx2"
}

variable "mm_db_01_ssh_keys" {
  type        = list(string)
  description = "List of authorized public SSH keys for db1"
}

variable "mm_db_02_ssh_keys" {
  type        = list(string)
  description = "List of authorized public SSH keys for db2"
}

variable "mm_app_01_ip_address" {
  type        = string
  description = "Ip address for vm app1"
}

variable "mm_db_01_ip_address" {
  type        = string
  description = "Ip address for vm db1"
}

variable "mm_db_02_ip_address" {
  type        = string
  description = "Ip address for vm db2"
}

variable "mm_nginx_01_ip_address" {
  type        = string
  description = "Ip address for vm nginx1"
}
