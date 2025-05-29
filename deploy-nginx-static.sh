#!/bin/bash
# deploy-nginx-static.sh

# Update and install Nginx
echo "Updating package lists and installing Nginx..."
sudo apt update
sudo apt install nginx -y

# Start and enable Nginx
echo "Starting and enabling Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

# Remove the default Nginx page
echo "Removing default Nginx page..."
sudo rm /var/www/html/index.nginx-debian.html

# Create a basic HTML file
echo "Creating a basic HTML index page..."
echo "<h1>Hello from Nginx on EC2!</h1>" | sudo tee /var/www/html/index.html

# Restart Nginx to apply changes
echo "Restarting Nginx..."
sudo systemctl restart nginx

# Optional: install Certbot for SSL
echo "To enable SSL, run:"
echo "sudo apt install certbot python3-certbot-nginx -y"
echo "sudo certbot --nginx"
