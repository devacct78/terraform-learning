#!/bin/bash
sudo yum install nginx -y
sudo service nginx start
sudo systemctl enable nginx