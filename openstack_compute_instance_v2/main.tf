terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.51.1"
    }
  }
}

resource "openstack_networking_floatingip_v2" "floating_ip" {
  count = var.instance_count
  pool  = var.floating_ip_pool_name
}

locals {
  floating_ip_addresses = {
    for idx, ip in openstack_networking_floatingip_v2.floating_ip : idx => ip.address
  }
}

resource "openstack_compute_instance_v2" "instance" {
  for_each        = local.floating_ip_addresses
  name            = "${var.instance_name}-${format("%02d", each.key + 1)}"
  flavor_name     = var.flavor_name
  image_name      = var.image_name
  key_pair        = var.key_pair
  security_groups = [var.security_group]
  network {
    name = var.network_name
  }
}

resource "openstack_compute_floatingip_associate_v2" "floating_ip_associate" {
  for_each     = local.floating_ip_addresses
  floating_ip  = each.value
  instance_id  = openstack_compute_instance_v2.instance[each.key].id
}
