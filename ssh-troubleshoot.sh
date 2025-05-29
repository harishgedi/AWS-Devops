#!/bin/bash
# ssh-troubleshoot.sh

# Set permissions on the key file
echo "Setting correct permissions for the SSH private key..."
chmod 400 ~/your-key.pem

# Show the key file in the current directory
echo "Verifying key file location..."
ls -la ~/your-key.pem

# Example SSH connection
echo "Connecting to EC2 instance..."
ssh -i ~/your-key.pem ubuntu@ec2-XX-XXX-XXX-XXX.compute.amazonaws.com

# Switch to root user after connection
echo "Use 'sudo su -' to switch to root user after connecting."
