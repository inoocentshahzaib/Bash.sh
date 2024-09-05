#!/bin/bash

# Search for the file named test.html
FILE_PATH=$(find / -type f -name "test.html" 2>/dev/null)

if [ -z "$FILE_PATH" ]; then
    echo "File test.html not found."
    exit 1
else
    echo "File found at: $FILE_PATH"
fi

# Copy the file to the Nginx server directory
sudo cp "$FILE_PATH" /var/www/html/

# Start the Nginx server
sudo systemctl start nginx

echo "File has been copied to /var/www/html/ and Nginx server started.
