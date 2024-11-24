#!/bin/bash
echo "Update the installed packages"
sudo yum update -y

echo "Installing docker"
sudo yum install -y docker

echo "Start the docker service"
sudo service docker start

echo "Add the ec2-user to the docker group "
sudo usermod -a -G docker ec2-user