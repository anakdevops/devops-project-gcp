# Output the public IPs of all instances
output "instance_ips_node" {
  value = [for instance in google_compute_instance.vm_devops : instance.network_interface[0].access_config[0].nat_ip]
}

# Output the internal IPs of all instances
output "instance_internal_ips_node" {
  value = [for instance in google_compute_instance.vm_devops : instance.network_interface[0].network_ip]
}

# Output the machine types for all instances
output "machine_types" {
  value = {
    for idx, vm in google_compute_instance.vm_devops : "app-node-${idx + 1}" => vm.machine_type
  }
  description = "The machine types of each Rancher node instance."
}

# Output the zone of each instance
output "instance_zones" {
  value = {
    for instance in google_compute_instance.vm_devops :
    instance.name => instance.zone
  }
}