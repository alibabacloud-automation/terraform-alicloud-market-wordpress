Terraform Module for creating Wordpress based on Alibaba Cloud market place image and attach ECS to SLB. 
terraform-alicloud-market-wordpress
-------

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-market-wordpress/blob/master/README-CN.md)

Terraform Module used to create ECS Instance based on Alibaba Cloud market place image and attach ECS to SLB, if domain_name exits, will associate SLB with domain. 

## Terraform versions

This module requires Terraform 0.12 and Terraform Provider AliCloud 1.72.0+.

## Usage
Building the Wordpress using market place image

```hcl
module "market_wordpress_with_ecs" {
  source = "terraform-alicloud-modules/market-wordpress/alicloud"
  region = "cn-beijing"

  product_keyword         = "Wordpress"
  product_suggested_price = 0

  ecs_instance_name          = "wordpress-instance"
  ecs_instance_password      = "YourPassword123"
  ecs_instance_type          = "ecs.sn1ne.large"
  system_disk_category       = "cloud_efficiency"
  security_group_ids         = ["sg-132txxxxx"]
  vswitch_id                 = "vsw-32refxxxx"
  internet_max_bandwidth_out = 50
  allocate_public_ip         = true
  data_disks = [
    {
      name = "disk-for-wordpress"
      size = 50
    }
  ]
}  
```

Building the Wordpress using market place image and bind a slb

```hcl
module "market_wordpress_with_slb" {
  source = "terraform-alicloud-modules/market-wordpress/alicloud"
  region = "cn-beijing"

  product_keyword         = "Wordpress"
  product_suggested_price = 0

  ecs_instance_name          = "wordpress-instance"
  ecs_instance_password      = "YourPassword123"
  ecs_instance_type          = "ecs.sn1ne.large"
  system_disk_category       = "cloud_efficiency"
  security_group_ids         = ["sg-132txxxxx"]
  vswitch_id                 = "vsw-32refxxxx"

  create_slb                 = true
  slb_name                   = "for-wordpress"
  bandwidth                  = 5
  spec                       = "slb.s1.small"
}  
```

Building the Wordpress using market place image and bind a slb and dns

```hcl
module "market_wordpress_with_bind_dns" {
  source = "terraform-alicloud-modules/market-wordpress/alicloud"
  region = "cn-beijing"

  product_keyword         = "Wordpress"
  product_suggested_price = 0

  ecs_instance_name          = "wordpress-instance"
  ecs_instance_password      = "YourPassword123"
  ecs_instance_type          = "ecs.sn1ne.large"
  system_disk_category       = "cloud_efficiency"
  security_group_ids         = ["sg-132txxxxx"]
  vswitch_id                 = "vsw-32refxxxx"

  create_slb                 = true
  slb_name                   = "for-wordpress"
  bandwidth                  = 5
  spec                       = "slb.s1.small"

  bind_domain                = true
  domain_name                = "cloudxxxx.xxx"
  host_record                = "wordpress"
  type                       = "A"
}  
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-market-wordpress/tree/master/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by Li Xue(lixue_9250@163.com) and He Guimin(@xiaozhu36, heguimin36@163.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
