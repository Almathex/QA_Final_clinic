#!/bin/bash 

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "Running Prerequisites"
sudo apt update
sudp apt-get -y upgrade
sudo apt-get install -y curl
sudo apt install -y unzip wget

echo "Installing Azure-CLI"
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

echo "Install Docker"
curl https://get.docker.com | sudo bash
sudo usermod -aG docker jenkins

echo "Install Docker Compose"
sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Installing kubectl"
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
sudo mv kubectl /usr/local/bin/kubectl
sudo chmod a+x /usr/local/bin/kubectl

echo "Refreshing Angular"
sudo npm uninstall -g angular-cli @angular/cli
sudo npm cache clean
sudo npm install -g @angular/cli@latest

echo "Installing Testing Frameworks"
sudo npm install karma 
sudo npm install -g protractor

echo "installing java"
sudo apt install -y default-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
