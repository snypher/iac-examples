resource "aws_ec2_managed_prefix_list" "example" {
  name        = "example-prefix-list"
  description = "A customer-managed IPv4 prefix list"
  address_family = "IPV4"
  max_entries = length(var.ipv4_addresses)

  entries {
    cidr = var.ipv4_addresses[count.index]
    description = "Entry for ${var.ipv4_addresses[count.index]}"
  }

  count = length(var.ipv4_addresses)
}

output "prefix_list_id" {
  value = aws_ec2_managed_prefix_list.example.id
}

output "prefix_list_name" {
  value = aws_ec2_managed_prefix_list.example.name
}