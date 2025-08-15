# Terraform AWS Project

This repository contains a Terraform project for managing AWS resources using best practices for organization and scalability. The project is structured into modules and environments to facilitate easy management and deployment of infrastructure.

## Project Structure

- **modules/**: Contains reusable Terraform modules.
  - **ipv4-prefix-list/**: Module for creating a customer-managed IPv4 prefix list in AWS.
- **environments/**: Contains environment-specific configurations.
  - **dev/**: Development environment configuration.
  - **staging/**: Staging environment configuration.
  - **prod/**: Production environment configuration.
- **.gitignore**: Specifies files and directories to be ignored by Git.
- **versions.tf**: Specifies required Terraform and provider versions.

## Getting Started

1. **Clone the repository**:
   ```
   git clone https://github.com/yourusername/terraform-aws-project.git
   cd terraform-aws-project
   ```

2. **Set up your environment**:
   - Ensure you have Terraform installed.
   - Configure your AWS credentials.

3. **Initialize Terraform**:
   ```
   terraform init
   ```

4. **Select an environment**:
   - Navigate to the desired environment directory (e.g., `environments/dev`).

5. **Customize variables**:
   - Update the `terraform.tfvars` file with your specific values based on the `terraform.tfvars.example` provided.

6. **Plan and apply**:
   ```
   terraform plan
   terraform apply
   ```

## Modules

### ipv4-prefix-list

This module creates a customer-managed IPv4 prefix list in AWS. It allows you to define the AWS Account ID and a list of IPv4 addresses as input variables.

#### Inputs

- `aws_account_id`: (string) The AWS Account ID where the prefix list will be created.
- `ipv4_addresses`: (list(string)) An array of IPv4 addresses to include in the prefix list.

#### Outputs

- `prefix_list_id`: The ID of the created prefix list.
- `prefix_list_name`: The name of the created prefix list.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or features.

## License

This project is licensed under the MIT License. See the LICENSE file for details.