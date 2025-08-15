# Modules Overview

This directory contains reusable Terraform modules that can be utilized across different environments. Each module is designed to encapsulate specific functionality, promoting code reusability and maintainability.

## Available Modules

### IPv4 Prefix List
- **Path:** `ipv4-prefix-list/`
- **Purpose:** This module creates a customer-managed IPv4 prefix list in AWS. It allows users to define a list of IPv4 addresses and manage them efficiently.

## Usage

To use a module, reference it in your environment's Terraform configuration file. For example, to use the IPv4 prefix list module, you can include the following in your `main.tf`:

```hcl
module "ipv4_prefix_list" {
  source         = "../modules/ipv4-prefix-list"
  aws_account_id = var.aws_account_id
  ipv4_addresses = var.ipv4_addresses
}
```

Make sure to define the necessary input variables in your environment's `variables.tf` file.