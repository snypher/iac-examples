resource "aws_ec2_managed_prefix_list" "ipv4_prefix_list" {
  name        = "my-ipv4-prefix-list"
  description = "Customer-managed IPv4 prefix list"
  address_family = "IPv4"
  max_entries = length(var.ipv4_addresses)

  entries {
    cidr = var.ipv4_addresses[count.index]
    description = "Entry for ${var.ipv4_addresses[count.index]}"
  }

  count = length(var.ipv4_addresses)
}

output "prefix_list_id" {
  value = aws_ec2_managed_prefix_list.ipv4_prefix_list.id
}

output "prefix_list_name" {
  value = aws_ec2_managed_prefix_list.ipv4_prefix_list.name
}