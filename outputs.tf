output "this_ecs_instance_public_ip" {
  description = "The ecs instance public ip."
  value       = alicloud_instance.this.*.public_ip
}
