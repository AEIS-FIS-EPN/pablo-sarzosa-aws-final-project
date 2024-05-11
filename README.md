# Terraform Configuration Setup

This repository contains Terraform configuration files to provision and manage infrastructure on [AWS](https://aws.amazon.com/).

## Terraform Version

This Terraform configuration is tested and compatible with Terraform version 1.7.5.

## Prerequisites

Before you begin, ensure you have the following prerequisites installed:

- [Terraform](https://www.terraform.io/downloads.html) version 1.7.5 or later
- AWS account with appropriate permissions
- AWS CLI configured with access keys

## Usage

Follow these steps to set up and use the Terraform configuration:

1. Clone the repository:

    ```bash
    git clone <repository_url>
    ```

2. Navigate to the directory containing the Terraform configuration files:

    ```bash
    cd terraform-aws-project
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Review the Terraform plan to understand the changes that will be applied:

    ```bash
    terraform plan
    ```

5. Apply the Terraform configuration to create or update resources:

    ```bash
    terraform apply
    ```

6. Confirm the changes when prompted by Terraform.

7. When you no longer need the infrastructure, you can destroy it using the following command:

    ```bash
    terraform destroy
    ```

## Configuration Files

### main.tf

The `main.tf` file contains the main Terraform configuration for provisioning AWS resources. It defines resources such as VPC, subnets, internet gateway, route tables, etc.

## Contributing

Contributions to improve this Terraform configuration are welcome! Feel free to open issues for suggestions or submit pull requests with enhancements.

## License

This Terraform configuration is open source and available under the [MIT License](LICENSE).
