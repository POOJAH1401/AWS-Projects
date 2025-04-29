# AWS CloudFormation Project - Simple Web Server

This project uses AWS CloudFormation to deploy a simple web server infrastructure on AWS.

## What this stack creates:
- Custom VPC
- Public Subnet
- Internet Gateway and Routing
- Security Group (SSH and HTTP open)
- EC2 Instance running Apache Web Server

## How to deploy:
1. Upload `webserver.yaml` in AWS CloudFormation.
2. Create Stack and wait for completion.
3. Access the Public IP / DNS provided in the Outputs tab.

## Author
Pooja Hase
