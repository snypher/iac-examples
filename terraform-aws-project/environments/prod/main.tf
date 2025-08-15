provider "aws" {
  region = var.aws_region
}

data "aws_caller_identity" "current" {}

module "ipv4_prefix_list" {
  source           = "../../modules/ipv4-prefix-list"
  aws_account_id   = data.aws_caller_identity.current.account_id
  aws_region       = var.aws_region
  prefix_list_name = var.prefix_list_name
  max_entries      = var.max_entries
  cidr_blocks      = var.cidr_blocks
}