# Root output block supplying the active IP address to the Ansible inventory setup
output "mm_app_01_ip" {
  value       = module.mattermost_app1.vm_ip
  description = "The target IP address app1 required by the automated Ansible inventory"
}

output "mm_db_01_ip" {
  value       = module.mattermost_db1.vm_ip
  description = "The target IP address db1 required by the automated Ansible inventory"
}

output "mm_db_02_ip" {
  value       = module.mattermost_db2.vm_ip
  description = "The target IP address db2 required by the automated Ansible inventory"
}

output "mm_nginx_01_ip" {
  value       = module.mattermost_nginx1.vm_ip
  description = "The target IP address nginx1 required by the automated Ansible inventory"
}
