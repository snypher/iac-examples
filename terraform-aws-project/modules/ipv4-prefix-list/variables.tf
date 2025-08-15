variable "aws_account_id" {
  description = "The AWS Account ID where the prefix list will be created."
  type        = string
}

variable "ipv4_addresses" {
  description = "A list of IPv4 addresses to include in the prefix list."
  type        = list(string)
}