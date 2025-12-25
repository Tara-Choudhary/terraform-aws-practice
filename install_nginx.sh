#!/bin/bash

sudo apt update -y
sudo apt install nginx -y

echo "<h1> Hello, I am learning Terraform and it is going very well. I am in love with Terraform </h1>" | sudo tee /var/www/html/index.html


sudo systemctl start nginx
sudo systemctl enable nginx