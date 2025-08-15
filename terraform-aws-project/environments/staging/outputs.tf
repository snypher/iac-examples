output "ipv4_prefix_list_id" {
  value = module.ipv4_prefix_list.prefix_list_id
}

output "ipv4_prefix_list_name" {
  value = module.ipv4_prefix_list.prefix_list_name
}

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}