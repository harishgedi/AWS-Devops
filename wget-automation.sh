#!/bin/bash
# wget-automation.sh

# Example of downloading a file
echo "Downloading a sample file..."
wget http://example.com/file.zip

# Custom file name
echo "Downloading with custom filename..."
wget -O custom.zip http://example.com/file.zip

# Resume interrupted download
echo "Resuming download..."
wget -c http://example.com/largefile.zip

# Download multiple URLs from a file
echo "Downloading multiple URLs from urls.txt..."
wget -i urls.txt

# Mirror an entire website
echo "Mirroring a website..."
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent http://example.com

# Background download
echo "Starting background download..."
wget -b http://example.com/file.zip
