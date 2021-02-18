data "oci_identity_availability_domain" "ad" {
  compartment_id = var.tenancy_ocid
  ad_number      = 1
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
}

resource "oci_core_instance" "test_instance" {
  count               = var.num_instances
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "${format("%s%02d", var.display_name_prefix, count.index + 1)}"
  shape               = var.instance_shape
  fault_domain        = var.fault_domains[count.index]

  create_vnic_details {
    subnet_id        = var.subnet_ocid
    assign_public_ip = false
    private_ip       = var.private_ips[count.index]
  }

  source_details {
    source_type = "image"
    source_id = var.instance_image_ocid
    boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
    user_data           = var.user_data
  }

  timeouts {
    create = var.instance_timeout
  }
}
