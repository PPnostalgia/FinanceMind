/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,ts,tsx}'],
  theme: {
    extend: {
      colors: {
        primary:   '#9c5a3c',
        secondary: '#7a8b6f',
        paper:     '#faf8f3',
        ink:       '#2b2620',
        'ink-mid': '#3d3530',
        muted:     '#b3aa9c',
        border:    '#e8e3d8',
      },
      fontFamily: {
        header: ['"Source Serif 4"', 'Georgia', 'serif'],
        body:   ['Inter', 'system-ui', 'sans-serif'],
        mono:   ['"JetBrains Mono"', 'monospace'],
      },
      typography: {
        DEFAULT: {
          css: {
            '--tw-prose-body':     '#2b2620',
            '--tw-prose-headings': '#2b2620',
            '--tw-prose-links':    '#9c5a3c',
            maxWidth: 'none',
          },
        },
      },
    },
  },
  plugins: [],
};
