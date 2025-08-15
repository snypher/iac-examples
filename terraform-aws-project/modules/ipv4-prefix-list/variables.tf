variable "aws_account_id" {
  description = "AWS Account ID where the prefix list will be created"
  type        = string
}

variable "aws_region" {
  description = "AWS Region where the prefix list will be created"
  type        = string
  default     = "us-east-1"
}

variable "prefix_list_name" {
  description = "Name of the prefix list"
  type        = string
  default     = "custom-prefix-list"
}

variable "max_entries" {
  description = "Maximum number of entries in the prefix list"
  type        = number
  default     = 20
}

variable "cidr_blocks" {
  description = "List of IPv4 CIDR blocks to include in the prefix list"
  type        = list(string)
}
