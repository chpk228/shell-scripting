#!/bin/bash
# Check if NGINX is installed
if dpkg -s nginx >/dev/null 2>&1; then
    echo "NGINX is already installed."
else
    echo "NGINX not found, installing now..."
    sudo apt update -y
    sudo apt install -y nginx
    echo "NGINX installed."
fi

