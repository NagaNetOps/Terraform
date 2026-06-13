# Terraform AWS EC2 Ubuntu Web Server

## Project Overview

This project uses Terraform to provision an Ubuntu EC2 instance on AWS. During instance initialization, a user data script automatically installs Apache2 and deploys a sample web page.

## Resources Created

* AWS EC2 Instance (Ubuntu)
* AWS Key Pair
* EBS Root Volume

## Features

* Infrastructure as Code using Terraform
* Automated Ubuntu server deployment
* Automatic Apache2 installation
* Automatic web page creation using User Data
* SSH access using imported key pair

## Prerequisites

* AWS Account
* AWS CLI configured
* Terraform installed
* Existing SSH public/private key pair

## Deployment Steps

Initialize Terraform:

terraform init

Format Terraform files:

terraform fmt

Validate configuration:

terraform validate

Review execution plan:

terraform plan

Deploy infrastructure:

terraform apply

## User Data Script

The instance automatically performs the following actions:

* Updates package repositories
* Installs Apache2
* Enables Apache service
* Starts Apache service
* Creates a sample index.html page

## Access the Web Server

After deployment:

SSH Access:

ssh -i id_ed25519 ubuntu@<public-ip>

Open the web page:

http://<public-ip>

## Cleanup

Destroy all resources:

terraform destroy

## Technologies Used

* Terraform
* AWS EC2
* Ubuntu Server
* Apache2

