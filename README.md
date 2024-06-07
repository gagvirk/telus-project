# README #

# Terraform Infrastructure Setup

## Overview

This Terraform configuration sets up the following infrastructure in the `ca-central-1` region:
- An S3 bucket and DynamoDB table for Terraform state storage and locking.
- A VPC with one public subnet and one private subnet.
- An internet gateway for public subnet access and a NAT gateway for private subnet access.
- Route tables for the public and private subnets.
- An autoscaling group (ASG) with EC2 instances, scaling based on high CPU utilization.
- A launch template for EC2 instances that includes a user data script to show a simple HTML page with the instance hostname.
- Application Load Balancer (ALB) in front of the ASG
- IAM roles and policies with least privilege
- Proper Security Groups to ensure secure access

## Prerequisites

- Terraform installed
- AWS CLI configured with appropriate permissions

## Setup Instructions

1. **Initialize Terraform:**

   ```bash
   terraform init

2. terraform plan

3. terraform apply

4. terraform destroy

### What is this repository for? ###

* Quick summary
This is terraform project for task as per instructions from telus international.

### Contribution guidelines ###

* Terraform plan to make sure resources are verified.
* Code review

### Who do I talk to? ###

* Repo Owner and Team Members for PR review