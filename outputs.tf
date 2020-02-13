output "this_ecs_instance_public_ip" {
  description = "The ecs instance public ip."
  value       = alicloud_instance.this.*.public_ip[0]
}

output "this_slb_address" {
  description = "The slb address."
  value       = format("http://%s", alicloud_slb.this.*.address[0])
}

output "this_wordpress_url" {
  description = "The url of wordpress."
  value       = format("http://%s%s", var.host_record != "" ? "${var.host_record}." : "", var.domain_name)
}
