# VSwitch  ID
output "this_vswitch_id" {
  description = "The virtual switch ID to launch ECS instance in VPC."
  value       = concat(alicloud_instance.this.*.vswitch_id, [""])[0]
}

# Security Group outputs
output "this_security_group_ids" {
  description = "A list of security group ids to associate with."
  value       = concat(alicloud_instance.this.*.security_groups, [""])[0]
}

# ECS Instance outputs
output "this_ecs_instance_image_id" {
  description = "The ID of the image used to launch the instance."
  value       = concat(alicloud_instance.this.*.image_id, [""])[0]
}

output "this_ecs_instance_instance_type" {
  description = "The type of instance."
  value       = concat(alicloud_instance.this.*.instance_type, [""])[0]
}

output "this_ecs_instance_system_disk_category" {
  description = "The system disk category used to launch one ecs instance."
  value       = concat(alicloud_instance.this.*.system_disk_category, [""])[0]
}

output "this_ecs_instance_system_disk_size" {
  description = "Size of the system disk, in GB."
  value       = concat(alicloud_instance.this.*.system_disk_size, [""])[0]
}

output "this_ecs_instance_host_name" {
  description = "The host name of ecs instance."
  value       = concat(alicloud_instance.this.*.host_name, [""])[0]
}

output "this_ecs_instance_private_ip" {
  description = "The private ip of ecs instance."
  value       = concat(alicloud_instance.this.*.private_ip, [""])[0]
}

output "this_ecs_instance_internet_charge_type" {
  description = "Internet charge type of the instance."
  value       = concat(alicloud_instance.this.*.internet_charge_type, [""])[0]
}

output "this_ecs_instance_internet_max_bandwidth_out" {
  description = "Maximum outgoing bandwidth to the public network."
  value       = concat(alicloud_instance.this.*.internet_max_bandwidth_out, [""])[0]
}

output "this_ecs_instance_instance_charge_type" {
  description = "The charge type of ecs instance."
  value       = concat(alicloud_instance.this.*.instance_charge_type, [""])[0]
}

output "this_ecs_instance_period" {
  description = "The duration that buy the resource."
  value       = concat(alicloud_instance.this.*.period, [""])[0]
}

output "this_ecs_instance_resource_group_id" {
  description = "The Id of resource group which the ECS instance belongs."
  value       = concat(alicloud_instance.this.*.resource_group_id, [""])[0]
}

output "this_ecs_instance_deletion_protection" {
  description = "Whether enable the deletion protection or not."
  value       = concat(alicloud_instance.this.*.deletion_protection, [""])[0]
}

output "this_ecs_instance_name" {
  description = "The name of ecs instance."
  value       = concat(alicloud_instance.this.*.instance_name, [""])[0]
}

output "this_ecs_instance_description" {
  description = "The description of ecs instance."
  value       = concat(alicloud_instance.this.*.description, [""])[0]
}

output "this_ecs_instance_tags" {
  description = "The tags of ecs instance."
  value       = alicloud_instance.this.*.tags
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
