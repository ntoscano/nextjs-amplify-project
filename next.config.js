/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export',
  distDir: '.next',
  // Remove the experimental settings causing issues
  generateEtags: false,
  trailingSlash: true,
  images: {
    unoptimized: true,
  }
};

module.exports = nextConfig; 