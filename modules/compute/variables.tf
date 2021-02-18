variable "tenancy_ocid" {}
variable "region" {}
variable "num_instances" {}
variable "compartment_ocid" {}
variable "instance_shape" {}
variable "display_name_prefix" {}
variable "subnet_ocid" {}
variable "fault_domains" {
  type    = list
  default = ["FAULT-DOMAIN-1", "FAULT-DOMAIN-2", "FAULT-DOMAIN-3"]
}
variable "instance_image_ocid" {}
variable "boot_volume_size_in_gbs" {
  default = "60"
}
variable "ssh_public_key" {}
variable "user_data" {
  default = ""
}
variable "instance_timeout" {
  default = "20m"
}
