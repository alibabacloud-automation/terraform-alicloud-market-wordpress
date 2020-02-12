terraform-alicloud-market-wordpress
=====================================================================

本 Terraform 模块将使用 Wordpress 镜像来创建 ECS 实例，此实例用来启动 Wordpress。

## Terraform 版本

本模板要求使用版本 Terraform 0.12 和 阿里云 Provider 1.56.0+。

## 用法

```hcl
module "market-wordpress" {
  source                     = "terraform-alicloud-modules/market-wordpress/alicloud"
  region                     = "cn-beijing"

  ecs_instance_name          = "wordpress-instance"
  ecs_instance_password      = "YourPassword123"
  ecs_instance_type          = "ecs.sn1ne.large"
  system_disk_category       = "cloud_efficiency"
  security_group_ids         = ["sg-45678"]
  vswitch_id                 = "vsw-345678"
  internet_max_bandwidth_out = 50
  image_id                   = "m-2ze69pmuxxxxxxx"
}  
```

## 示例

* [在 ECS 上启动 Wordpress 示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-market-wordpress/tree/master/examples/complete)

## 注意事项

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

作者
-------
Created and maintained by Li Xue(lixue_9250@163.com) and He Guimin(@xiaozhu36, heguimin36@163.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
