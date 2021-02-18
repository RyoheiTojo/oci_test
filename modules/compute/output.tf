output "instance_ips" {
  value = "${oci_core_instance.instances.*.private_ip}"
}
