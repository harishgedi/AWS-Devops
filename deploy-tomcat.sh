#!/bin/bash
# deploy-tomcat.sh

# Install Java
echo "Installing Java (OpenJDK 8)..."
sudo yum install java-1.8.0-openjdk -y

# Download and extract Tomcat
echo "Downloading and extracting Tomcat..."
cd /opt
sudo wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.7/bin/apache-tomcat-10.1.7.tar.gz
sudo tar -xvf apache-tomcat-10.1.7.tar.gz
sudo chown -R ec2-user:ec2-user apache-tomcat-10.1.7

# Start Tomcat
echo "Starting Tomcat..."
cd apache-tomcat-10.1.7/bin
sudo ./startup.sh

echo "Tomcat is now running at http://<EC2-public-IP>:8080"
