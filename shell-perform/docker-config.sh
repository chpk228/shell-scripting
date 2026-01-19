#!/bin/bash

if command -v docker >/dev/null 2>&1; then
    echo "Docker is already installed."
else
    echo "Docker not found. Installing Docker..."

    sudo yum update -y
    sudo yum install -y docker

    sudo systemctl start docker
    sudo systemctl enable docker

    sudo usermod -aG docker ec2-user

    echo "Docker installed successfully."
    echo "Log out and log back in to use Docker without sudo."
fi

