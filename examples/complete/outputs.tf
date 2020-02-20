output "this_url_of_market_wordpress_with_ecs" {
  description = "The url of wordpress."
  value       = module.market_wordpress_with_ecs.this_wordpress_url
}

output "this_url_of_market_wordpress_with_slb" {
  description = "The url of wordpress with creating slb."
  value       = module.market_wordpress_with_slb.this_wordpress_url
}

output "this_url_of_market_wordpress_with_bind_dns" {
  description = "The url of wordpress with binding dns."
  value       = module.market_wordpress_with_bind_dns.this_wordpress_url
}
