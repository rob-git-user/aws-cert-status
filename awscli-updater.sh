#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "➡️ Checking installed AWS CLI version..."
# Get the currently installed version of AWS CLI
INSTALLED_VERSION=$(aws --version 2>/dev/null | awk '{print $1}' | cut -d/ -f2)
echo "  Current version: $INSTALLED_VERSION"

echo "➡️ Downloading latest AWS CLI v2 release..."
# Download the latest AWS CLI v2 installer
curl -s https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip

# Unzip the installer quietly
unzip -q awscliv2.zip

# Try installing the CLI to a temporary directory just to extract the version
# We do not install it yet unless it's newer
NEW_VERSION=$(./aws/install --bin-dir /tmp/awscli-bin --install-dir /tmp/awscli-dir --update 2>&1 | grep -oP 'aws-cli/\K[0-9.]+')

# Compare versions
if [ "$NEW_VERSION" == "$INSTALLED_VERSION" ]; then
    echo "✅ Already up to date: $INSTALLED_VERSION"
else
    echo "⬆️  Updating from $INSTALLED_VERSION to $NEW_VERSION..."
    # Perform the actual update (requires sudo)
    sudo ./aws/install --update
    echo "✅ Update complete. New version: $(aws --version)"
fi

# Clean up temporary files
echo "🧹 Cleaning up..."
rm -rf awscliv2.zip aws /tmp/awscli-*

