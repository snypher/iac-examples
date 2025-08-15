output "prefix_list_name" {
  description = "The name of the managed prefix list"
  value       = aws_ec2_managed_prefix_list.this.name
}

output "prefix_list_id" {
  description = "The ID of the managed prefix list"
  value       = aws_ec2_managed_prefix_list.this.id
}

output "prefix_list_arn" {
  description = "The ARN of the managed prefix list"
  value       = aws_ec2_managed_prefix_list.this.arn
}
