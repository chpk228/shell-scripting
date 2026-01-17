#!/bin/bash
if ! command -v httpd &> /dev/null; then
    echo "httpd not installed. Installing..."
    if [ -f /etc/redhat-release ]; then
        sudo yum install httpd -y
    elif [ -f /etc/debian_version ]; then
        sudo apt update
        sudo apt install apache2 -y
    else
        echo "Unsupported operating system."
        exit 1
    fi
    echo "httpd installation complete."
else
    echo "httpd is already installed."
fi

