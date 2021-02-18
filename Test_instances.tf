module "TestInstance" {
  source = "./modules/compute"

  compartment_ocid = var.compartment_ocid
  tenancy_ocid = var.tenancy_ocid
  region = var.region
  ssh_public_key = var.ssh_public_key

  instance_shape = "VM.Standard2.1"
  subnet_ocid = "ocid1.subnet.oc1.iad.aaaaaaaag2lbmdcl3zlqkfz2fhszxdzbcwgb7m3lrmmzwgqkcy32c3z5ik3a"
  instance_image_ocid = "ocid1.image.oc1.iad.aaaaaaaaissw3yfxkvrijvfkvvfhabosr7tsu322wjm23ds6h4lbour7l5ga"

  num_instances       = 2
  display_name_prefix = "hoge"
}
