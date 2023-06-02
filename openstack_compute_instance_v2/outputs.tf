output "instance_ip" {
  description = "Public IP addresses of the created instances"
  value       = { for instance in openstack_compute_instance_v2.instance : instance.name => instance.access_ip_v4 }
}

output "instance_id" {
  description = "IDs of the created instances"
  value       = { for instance in openstack_compute_instance_v2.instance : instance.name => instance.id }
}

output "instance_names" {
  description = "Names of the created instances"
  value       = [for instance in openstack_compute_instance_v2.instance : instance.name]
}

output "floating_ips" {
  description = "Floating IPs allocated to the instances"
  value       = { for idx, instance in openstack_compute_instance_v2.instance : instance.name => openstack_networking_floatingip_v2.floating_ip[idx].address }
}
