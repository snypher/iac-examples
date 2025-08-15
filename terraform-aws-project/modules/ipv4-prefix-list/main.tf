resource "aws_ec2_managed_prefix_list" "this" {
  name        = "custom-ipv4-prefix-list"
  description = "A customer-managed IPv4 prefix list"
  address_family = "IPV4"
  max_entries = length(var.ipv4_addresses)

  prefix_list_entries {
    for_each = var.ipv4_addresses
    cidr     = each.value
  }

  tags = {
    "Owner"       = var.aws_account_id
    "Environment" = "dev"
  }
}