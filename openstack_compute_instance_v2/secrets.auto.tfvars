openstack_auth_url      = "https://192.168.179.128:5000/v3/"
openstack_username      = "admin"
openstack_password      = "l1xDAq9empdU1MgQCfSUHCKS2ikVGOG2"
openstack_tenant_name   = "admin"
openstack_region        = "microstack"

instance_count = 2

instance_name = "test-vm"
flavor_name = "m1.tiny"
image_name = "cirros"
key_pair = "microstack"
security_group = "default"
network_name = "internal"
floating_ip_pool_name = "external"