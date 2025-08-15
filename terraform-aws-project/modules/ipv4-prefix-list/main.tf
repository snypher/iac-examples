provider "aws" {
  region = var.aws_region
}

resource "aws_ec2_managed_prefix_list" "this" {
  name           = var.prefix_list_name
  address_family = "IPv4"
  max_entries    = var.max_entries

  tags = {
    Name        = var.prefix_list_name
    CreatedBy   = "Terraform"
    Owner       = var.aws_account_id
  }
}

resource "aws_ec2_managed_prefix_list_entry" "entries" {
  for_each = {
    for idx, cidr in var.cidr_blocks : "${idx}" => cidr
  }

  cidr           = each.value
  description    = "Entry ${each.key}"
  prefix_list_id = aws_ec2_managed_prefix_list.this.id
}
