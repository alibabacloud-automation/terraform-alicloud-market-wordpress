# VSwitch  ID
output "this_vswitch_id" {
  value = concat(alicloud_instance.this.*.vswitch_id, [""])[0]
}

output "this_vswitch_description" {
  value = concat(alicloud_instance.this.*.description, [""])[0]
}

# Security Group outputs
output "this_security_group_ids" {
  value = concat(alicloud_instance.this.*.security_groups, [""])[0]
}

# ECS Instance outputs
output "this_ecs_instance_image_id" {
  value = concat(alicloud_instance.this.*.image_id, [""])[0]
}

output "this_ecs_instance_instance_type" {
  value = concat(alicloud_instance.this.*.instance_type, [""])[0]
}

output "this_ecs_instance_system_disk_category" {
  value = concat(alicloud_instance.this.*.system_disk_category, [""])[0]
}

output "this_ecs_instance_system_disk_size" {
  value = concat(alicloud_instance.this.*.system_disk_size, [""])[0]
}

output "this_ecs_instance_host_name" {
  value = concat(alicloud_instance.this.*.host_name, [""])[0]
}

output "this_ecs_instance_private_ip" {
  value = concat(alicloud_instance.this.*.private_ip, [""])[0]
}

output "this_ecs_instance_internet_charge_type" {
  value = concat(alicloud_instance.this.*.internet_charge_type, [""])[0]
}

output "this_ecs_instance_internet_max_bandwidth_out" {
  value = concat(alicloud_instance.this.*.internet_max_bandwidth_out, [""])[0]
}

output "this_ecs_instance_instance_charge_type" {
  value = concat(alicloud_instance.this.*.instance_charge_type, [""])[0]
}

output "this_ecs_instance_period" {
  value = concat(alicloud_instance.this.*.period, [""])[0]
}

output "this_ecs_instance_resource_group_id" {
  value = concat(alicloud_instance.this.*.resource_group_id, [""])[0]
}

output "this_ecs_instance_deletion_protection" {
  value = concat(alicloud_instance.this.*.deletion_protection, [""])[0]
}

output "this_ecs_instance_name" {
  value = concat(alicloud_instance.this.*.instance_name, [""])[0]
}

output "this_ecs_instance_description" {
  value = concat(alicloud_instance.this.*.description, [""])[0]
}

output "this_ecs_instance_tags" {
  value = alicloud_instance.this.*.tags
}

output "this_ecs_instance_public_ip" {
  description = "The ecs instance public ip."
  value       = concat(alicloud_instance.this.*.public_ip, [""])[0]
}

# SLB outputs
output "this_slb_public_address" {
  description = "The slb public address."
  value       = concat(alicloud_slb.this.*.address, [""])[0]
}

output "this_slb_id" {
  description = "The slb id."
  value       = concat(alicloud_slb.this.*.id, [""])[0]
}

output "this_slb_name" {
  description = "The slb name."
  value       = concat(alicloud_slb.this.*.name, [""])[0]
}

output "this_slb_listener_frontend_port" {
  description = "The frontend_port of slb listener."
  value       = concat(alicloud_slb_listener.this.*.frontend_port, [""])[0]
}

output "this_slb_listener_protocol" {
  description = "The protocol of slb listener."
  value       = concat(alicloud_slb_listener.this.*.protocol, [""])[0]
}

output "this_slb_listener_server_group_id" {
  description = "The backend server group id of slb listener."
  value       = concat(alicloud_slb_listener.this.*.server_group_id, [""])[0]
}

# Dns record outputs
output "this_dns_record_host_record" {
  description = "The host_record of dns record."
  value       = concat(alicloud_dns_record.record.*.host_record, [""])[0]
}

output "this_dns_record_name" {
  description = "The domain of dns record."
  value       = concat(alicloud_dns_record.record.*.name, [""])[0]
}

output "this_dns_record_id" {
  description = "The id of dns record."
  value       = concat(alicloud_dns_record.record.*.id, [""])[0]
}

output "this_wordpress_url" {
  description = "The url of wordpress."
  value       = format("http://%s%s", var.host_record != "" ? "${var.host_record}." : "", var.domain_name)
}
