# EC2 Web Server Deployment on AWS

## Description
This project deploys an Apache web server on an AWS EC2 instance using automated bash scripts.

## Setup Instructions
1. Launch an EC2 instance (Amazon Linux 2).
2. Use the `setup-apache.sh` script as User Data.
3. Configure Security Groups for HTTP/HTTPS access.
4. Assign an Elastic IP.
5. Access your website via the Elastic IP.

## Script
\`\`\`bash
#!/bin/bash

# Update package list
sudo yum update -y

# Install Apache (httpd)
sudo yum install httpd -y

# Start and enable Apache service
sudo systemctl start httpd
sudo systemctl enable httpd

# Create a simple index.html page
echo "<html><h1>Welcome to My Apache Web Server on AWS EC2!</h1></html>" | sudo tee /var/www/html/index.html

# Set proper permissions
sudo chown apache:apache /var/www/html/index.html

# Restart Apache service
sudo systemctl restart httpd

\`\`\`
