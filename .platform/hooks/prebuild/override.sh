#!/bin/bash
# This script runs before Amplify's build process
# It helps ensure we use our simple static export approach

echo "Running custom prebuild hook"
# Force the build to use our static export approach
export AMPLIFY_NEXTJS_BUILD_OVERRIDE=true
# Disable serverless component
export DISABLE_NEXTJS_SERVERLESS=true

# Create a backup of the Next.js config
if [ -f "next.config.js" ]; then
  cp next.config.js next.config.backup.js
  # Make sure the Next.js config only has static export
  echo 'module.exports = {output: "export"};' > next.config.js
  echo "Modified next.config.js for static export"
fi

# Make the script executable
chmod +x .platform/hooks/prebuild/override.sh 