data "oci_identity_availability_domain" "ad" {
  compartment_id = var.tenancy_ocid
  ad_number      = 1
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
}

resource "oci_load_balancer_backend" "backendset" {
  load_balancer_id = var.load_balancer_id
  backendset_name  = var.backendset_name
  ip_address       = var.instance_private_ips
  port             = 80
  backup           = false
  drain            = false
  offline          = false
  weight           = 1
}
