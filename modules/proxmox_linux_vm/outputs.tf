output "vm_ip" {
  value       = proxmox_virtual_environment_vm.linux_vm.ipv4_addresses
  description = "The dynamically allocated IPv4 addresses of the deployed VM"
}
