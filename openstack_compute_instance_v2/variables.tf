variable "openstack_auth_url" {
  description = "Rackspace OpenStack authentication URL"
}

variable "openstack_username" {
  description = "Rackspace OpenStack username"
}

variable "openstack_password" {
  description = "Rackspace OpenStack username"
}

variable "openstack_tenant_name" {
  description = "Rackspace OpenStack tenant name"
}

variable "openstack_region" {
  description = "Rackspace OpenStack region"
}

variable "instance_name" {
  description = "Name prefix for the compute instances"
}

variable "instance_count" {
  description = "Number of compute instances to create"
  default     = 1
}

variable "floating_ip_pool_name" {
  description = "Floating IP Pool Name"
  
}

variable "flavor_name" {
  description = "Name of the flavor for the compute instances"
}

variable "image_name" {
  description = "Name of the image for the compute instances"
}

variable "key_pair" {
  description = "Name of the key pair to associate with the compute instances"
}

variable "security_group" {
  description = "Name of the security group for the compute instances"
}

variable "network_name" {
  description = "Name of the network to attach the compute instances to"
}