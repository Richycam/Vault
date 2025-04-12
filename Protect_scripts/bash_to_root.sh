#!/bin/bash

# List of environment files to secure
env_files=(
    "/env/password.env"
    "/enc/vault.env"
)

# Function to set permissions
secure_env_files() {
    for file in "${env_files[@]}"; do
        if [ -f "$file" ]; then
            # Change ownership to root
            chown root:root "$file"
            # Set permissions to read/write for root only
            chmod 600 "$file"
            echo "Secured $file"
        else
            echo "File $file does not exist"
        fi
    done
}

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi

# Secure the environment files
secure_env_files

echo "Environment files have been secured."
