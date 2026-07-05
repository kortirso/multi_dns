const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.jsx',
    './app/views/**/*.{erb,html}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: [...defaultTheme.fontFamily.sans],
        martian: ['Martian Mono', ...defaultTheme.fontFamily.sans],
      },
      lineHeight: {
        '16': '4rem',
      }
    },
    colors: {
      'black': '#000',
      'eerie-black': '#18191F',
      'yellow-orange': '#FBA346', // yellow
      'spanish-orange': '#EC7104', // dark yellow
      'iceberg': '#63B3CE',
      'blue': '#A2D8EB',
      'gainsboro': '#DBDBDB',
      'cultured': '#F4F5F7',
      'white': '#FFF',
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
