/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {},
  },
  // Ensure compatibility with Tailwind v4
  future: {
    // Enable all v4 features
    hoverOnlyWhenSupported: true,
  },
  plugins: [],
} 