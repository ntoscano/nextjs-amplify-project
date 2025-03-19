/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'standalone',
  distDir: '.next',
  // Explicitly setting important flags to prevent any auto-configuration by Amplify
  experimental: {
    serverActions: true,
  },
  // Disable generating etags for pages
  generateEtags: false,
};

module.exports = nextConfig; 