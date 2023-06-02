provider "openstack" {
  insecure            = true
  auth_url            = var.openstack_auth_url
  user_name           = var.openstack_username
  password            = var.openstack_password
  tenant_name         = var.openstack_tenant_name
  region              = var.openstack_region
}