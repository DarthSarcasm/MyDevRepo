#!/bin/bash
# Update the OS packages on startup
yum update -y
# Install and start/enable the webserver
yum install -y httpd
systemctl start httpd
systemctl enable httpd
