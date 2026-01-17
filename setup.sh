#!/bin/bash

# Function to check if a command exists
command_exists() {
	command -v "$1" >/dev/null 2>&1
}

echo "Checking prerequisites..."

# Check for Zola
if command_exists zola; then
	echo "✅ Zola is installed."
else
	echo "❌ Zola is not installed."
	echo "Please install it by following the instructions here: https://www.getzola.org/documentation/getting-started/installation/"
	exit 1
fi

# Check for Trunk
if command_exists trunk; then
	echo "✅ Trunk is installed."
else
	echo "❌ Trunk is not installed."
	echo "Please install it by following the instructions here: https://trunk.io"
	exit 1
fi

echo "All prerequisites are met. You can now run 'zola serve' to start the development server."
