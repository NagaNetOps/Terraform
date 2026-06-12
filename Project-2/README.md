# AWS Infrastructure using Terraform Modules and Remote Backend

## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform modules for reusable and scalable AWS resource provisioning.

The infrastructure uses:

* Custom VPC Module
* EC2 Module
* S3 Remote Backend for Terraform State Management
* Variable-based Configuration
* Modular Terraform Architecture

## Architecture

### Modules Used

#### VPC Module

* Creates AWS VPC
* Public and Private Subnets
* Route Tables
* Internet Gateway

#### EC2 Module

* Launches EC2 Instances
* Uses Variables for Instance Configuration
* Supports Reusable Deployments

## Remote Backend

Terraform state is stored remotely in Amazon S3 to support:

* Centralized State Management
* Team Collaboration
* State File Security
* Version Control of State Files

Backend Configuration:

* Amazon S3 Bucket
* State File Versioning Enabled

## Technologies Used

* Terraform
* AWS VPC
* AWS EC2
* AWS S3
* Terraform Modules
* Remote State Management

## Deployment Steps

1. Initialize Terraform

terraform init

2. Validate Configuration

terraform validate

3. Review Execution Plan

terraform plan

4. Deploy Infrastructure

terraform apply

## Skills Demonstrated

* Terraform Modules
* Infrastructure as Code (IaC)
* AWS Networking
* EC2 Provisioning
* Terraform Variables
* Remote Backend Configuration
* State Management
* Reusable Infrastructure Design

## Author

Nagaganapathi
Network | Security | Cloud Engineer

