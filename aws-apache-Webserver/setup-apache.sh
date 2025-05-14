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
