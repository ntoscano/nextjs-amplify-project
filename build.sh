#!/bin/bash
# Custom build script for Amplify

# Display important information
echo "Starting custom build script"
echo "Node version: $(node -v)"
echo "NPM version: $(npm -v)"

# Force the correct next.js config
echo 'module.exports = {output: "export"};' > next.config.js
echo "Created simple next.config.js"

# Install dependencies
npm ci
echo "Dependencies installed"

# Run the build
npm run build
echo "Build completed"

# Ensure output directory exists (for static export)
mkdir -p out-static
cp -r out/* out-static/
echo "Static files copied to out-static"

echo "Custom build completed successfully" 