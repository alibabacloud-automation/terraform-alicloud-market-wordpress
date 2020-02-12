provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/terraform-alicloud-market-wordpress"
}

data "alicloud_regions" "this" {
  current = true
}

resource "alicloud_instance" "this" {
  image_id                    = var.image_id
  instance_type               = var.ecs_instance_type
  security_groups             = var.security_group_ids

  instance_name               = var.ecs_instance_name
  password                    = var.ecs_instance_password

  system_disk_category        = var.system_disk_category
  system_disk_size            = var.system_disk_size

  vswitch_id                  =  var.vswitch_id
  private_ip                  =  var.private_ip

  internet_charge_type        = var.internet_charge_type
  internet_max_bandwidth_out  = var.internet_max_bandwidth_out

  resource_group_id           = var.resource_group_id
  deletion_protection         = var.deletion_protection
  force_delete                = true
  tags = merge(
  {
    Created     = "Terraform"
    Application = "Wordpress"
  }, var.tags,
  )
}