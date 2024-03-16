#!/bin/bash
# NOTE: Remove comments when using, due to user_data size limitations
# Update the OS packages on startup
yum update -y
# Install and start/enable the webserver
yum install -y httpd
systemctl start httpd
systemctl enable httpd
