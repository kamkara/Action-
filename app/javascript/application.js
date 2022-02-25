// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// require images
const images = require.context('../images', true)

import './components/pricing.js'
import './components/modal_charte.js'
import './components/caroussel.js'