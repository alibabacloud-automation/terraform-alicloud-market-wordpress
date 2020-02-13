Terraform Module for creating Wordpress based on Alibaba Cloud market place image and attach ECS to SLB. 
terraform-alicloud-market-wordpress
-------

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-market-wordpress/blob/master/README-CN.md)

Terraform Module used to create ECS Instance based on Alibaba Cloud market place image and attach ECS to SLB, if domain_name exits, will associate SLB with domain. 

## Terraform versions

This module requires Terraform 0.12 and Terraform Provider AliCloud 1.56.0+.

## Usage

```hcl
module "market-wordpress" {
  source                     = "terraform-alicloud-modules/market-wordpress/alicloud"
  region                     = "cn-beijing"

  ecs_instance_name          = "wordpress-instance"
  ecs_instance_password      = "YourPassword123"
  ecs_instance_type          = "ecs.sn1ne.large"
  system_disk_category       = "cloud_efficiency"
  security_group_ids         = ["sg-45678xxx"]
  vswitch_id                 = "vsw-345678xxx"
  internet_max_bandwidth_out = 50
  image_id                   = "m-2ze69pmuxxxxxxx"
  slb_name                   = "slb_wordpress"
  internal                   = true
  bandwidth                  = 5
  spec                       = "slb.s1.small"
  frontend_port              = 80
  protocol                   = "http"
  domain_name                = "cloudxxxx.xxx"
  host_record                = "wordpress"
  type                       = "A"
}  
```

## Examples

* [install-on-ecs example](https://github.com/terraform-alicloud-modules/terraform-alicloud-market-wordpress/tree/master/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

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
