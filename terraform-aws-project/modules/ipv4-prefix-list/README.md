# IPv4 Prefix List Module

This module creates a customer-managed IPv4 prefix list in AWS using the `aws_ec2_managed_prefix_list` resource. It allows you to define a list of IPv4 addresses that can be managed and referenced in your AWS account.

## Inputs

| Name              | Description                                           | Type           | Default | Required |
|-------------------|-------------------------------------------------------|----------------|---------|----------|
| `aws_account_id`  | The AWS Account ID where the prefix list will be created. | string         | n/a     | yes      |
| `ipv4_addresses`  | A list of IPv4 addresses to include in the prefix list. | list(string)   | n/a     | yes      |

## Outputs

| Name                | Description                                           |
|---------------------|-------------------------------------------------------|
| `prefix_list_id`    | The ID of the created prefix list.                    |
| `prefix_list_name`  | The name of the created prefix list.                  |

## Usage Example

```hcl
module "ipv4_prefix_list" {
  source         = "../modules/ipv4-prefix-list"
  aws_account_id = "123456789012"
  ipv4_addresses = ["192.0.2.0/24", "203.0.113.0/24"]
}
```

## Notes

- Ensure that you have the necessary permissions to create prefix lists in your AWS account.
- This module can be reused across different environments by passing different variable values.