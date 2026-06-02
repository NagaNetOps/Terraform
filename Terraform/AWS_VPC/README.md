# AWS VPC Infrastructure using Terraform

## Project Overview

This project provisions a custom AWS VPC in the Mumbai (Hyderabad) Region (`ap-south-2`) using Terraform.

The infrastructure follows a three-tier architecture with separate Public, Application, and Database subnets distributed across two Availability Zones for high availability.

## Architecture

### VPC

* CIDR Block: `50.0.0.0/16`

### Public Subnets

| Subnet           | CIDR        | AZ          |
| ---------------- | ----------- | ----------- |
| Public-Subnet-2A | 50.0.0.0/24 | ap-south-2a |
| Public-Subnet-2B | 50.0.1.0/24 | ap-south-2b |

### Application Subnets

| Subnet         | CIDR        | AZ          |
| -------------- | ----------- | ----------- |
| Application-2A | 50.0.2.0/24 | ap-south-2a |
| Application-2B | 50.0.3.0/24 | ap-south-2b |

### Database Subnets

| Subnet | CIDR        | AZ          |
| ------ | ----------- | ----------- |
| DB-2A  | 50.0.4.0/24 | ap-south-2a |
| DB-2B  | 50.0.5.0/24 | ap-south-2b |

## Components Created

* AWS VPC
* 6 Subnets
* Internet Gateway
* Public Route Table
* Private Route Table
* Route Table Associations

## Technologies Used

* Terraform
* AWS VPC
* AWS Subnets
* AWS Route Tables
* AWS Internet Gateway

## Deployment

Initialize Terraform:

```bash
terraform init
```

Validate Configuration:

```bash
terraform validate
```

Review Changes:

```bash
terraform plan
```

Deploy Infrastructure:

```bash
terraform apply
```

## Skills Demonstrated

* Infrastructure as Code (IaC)
* Terraform Resource Management
* AWS Networking
* VPC Design
* Public and Private Subnet Architecture
* Route Table Configuration
* Cloud Infrastructure Automation

## Author

Nagaganapathi
Network | Security | Cloud Engineer

