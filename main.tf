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

  vswitch_id                  = var.vswitch_id
  private_ip                  = var.private_ip

  internet_charge_type        = var.internet_charge_type
  internet_max_bandwidth_out  = var.internet_max_bandwidth_out

  resource_group_id           = var.resource_group_id
  deletion_protection         = var.deletion_protection
  force_delete                = true
  tags = merge(
  {
    Created     = "Terraform"
    Application = "Market-Wordpress"
  }, var.tags,
  )
}


resource "alicloud_slb" "this"{
  count             = var.create_slb == true ? 1 : 0
  name              = var.slb_name
  address_type      = "internet"
  vswitch_id        = var.vswitch_id
  specification     = var.spec
  bandwidth         = var.bandwidth
  tags=merge(
  {
    Created     = "Terraform"
    Application = "Market-Wordpress"
  }, var.tags,
  )
}

resource "alicloud_slb_server_group" "this" {
  count             = var.create_slb == true ? 1 : 0
  load_balancer_id  = alicloud_slb.this.*.id[0]
  servers {
    server_ids = alicloud_instance.this.*.id
    port       = 80
  }
}

resource "alicloud_slb_listener" "this" {
  count               = var.create_slb == true ? 1 : 0
  frontend_port       = var.frontend_port
  load_balancer_id    = alicloud_slb.this.*.id[0]
  protocol            = var.protocol
  server_group_id     = alicloud_slb_server_group.this.*.id[0]
}

resource "alicloud_dns_record" "record" {
  count       = var.bind_domain == true ? 1 : 0
  name        = var.domain_name
  host_record = var.host_record
  type        = var.type
  value       = alicloud_slb.this.*.address[0]
}
