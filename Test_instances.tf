module "TestInstance" {
  source = "./modules/compute"

  compartment_ocid = var.compartment_ocid
  tenancy_ocid = var.tenancy_ocid
  region = var.region

  instance_shape = "VM.Standard2.1"
  subnet_ocid = "ocid1.subnet.oc1.iad.aaaaaaaag2lbmdcl3zlqkfz2fhszxdzbcwgb7m3lrmmzwgqkcy32c3z5ik3a"
  instance_image_ocid = "ocid1.image.oc1.iad.aaaaaaaaissw3yfxkvrijvfkvvfhabosr7tsu322wjm23ds6h4lbour7l5ga"
  ssh_public_key      = var.ssh_public_key

  num_instances = 2
  fault_domains = ["FAULT-DOMAIN-1", "FAULT-DOMAIN-2", "FAULT-DOMAIN-3"]
  display_names = ["hoge1", "hoge2", "hoge3"]
  private_ips   = ["10.0.1.128", "10.0.1.129", "10.0.1.130"]

}
