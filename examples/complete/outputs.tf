output "this_url_of_market_wordpress_with_ecs" {
  description = "The url of wordpress."
  value       = module.market_wordpress_with_ecs_slb_dns.this_wordpress_url
}

output "this_instance_id_of_wordpress_with_ecs" {
  description = "The instance id of wordpress."
  value       = module.market_wordpress_with_ecs_slb_dns.this_ecs_instance_id
}

output "this_image_id_of_wordpress_with_ecs" {
  description = "The image id of wordpress."
  value       = module.market_wordpress_with_ecs_slb_dns.this_ecs_instance_image_id
}

output "this_vswitch_id_of_wordpress_with_ecs" {
  description = "The vswitch id of wordpress."
  value       = module.market_wordpress_with_ecs_slb_dns.this_vswitch_id
}

output "this_url_of_market_wordpress_with_slb" {
  description = "The url of wordpress with creating slb."
  value       = module.market_wordpress_with_ecs_slb_dns.this_wordpress_url
}

output "this_instance_id_of_wordpress_with_slb" {
  description = "The instance id of wordpress with creating slb."
  value       = module.market_wordpress_with_ecs_slb_dns.this_ecs_instance_id
}

output "this_image_id_of_wordpress_with_slb" {
  description = "The image id of wordpress with creating slb."
  value       = module.market_wordpress_with_ecs_slb_dns.this_ecs_instance_image_id
}

output "this_vswitch_id_of_wordpress_with_slb" {
  description = "The vswitch id of wordpress with creating slb."
  value       = module.market_wordpress_with_ecs_slb_dns.this_vswitch_id
}

output "this_slb_id_of_wordpress_with_slb" {
  description = "The slb id of wordpress."
  value       = module.market_wordpress_with_ecs_slb_dns.this_slb_id
}

output "this_slb_listener_server_group_id_of_wordpress_with_slb" {
  description = "The server group id of wordpress with creating slb."
  value       = module.market_wordpress_with_ecs_slb_dns.this_slb_listener_server_group_id
}

output "this_url_of_market_wordpress_with_bind_dns" {
  description = "The url of wordpress with binding dns."
  value       = module.market_wordpress_with_ecs_slb_dns.this_wordpress_url
}

output "this_instance_id_of_wordpress_with_dns" {
  description = "The instance id of wordpress with binding dns."
  value       = module.market_wordpress_with_ecs_slb_dns.this_ecs_instance_id
}

output "this_image_id_of_wordpress_with_dns" {
  description = "The image id of wordpress with binding dns."
  value       = module.market_wordpress_with_ecs_slb_dns.this_ecs_instance_image_id
}

output "this_vswitch_id_of_wordpress_with_dns" {
  description = "The vswitch id of wordpress with binding dns."
  value       = module.market_wordpress_with_ecs_slb_dns.this_vswitch_id
}

output "this_slb_id_of_wordpress_with_dns" {
  description = "The slb id of wordpress with binding dns."
  value       = module.market_wordpress_with_ecs_slb_dns.this_slb_id
}

output "this_slb_listener_server_group_id_of_wordpress_with_dns" {
  description = "The server group id of wordpress with binding dns."
  value       = module.market_wordpress_with_ecs_slb_dns.this_slb_listener_server_group_id
}