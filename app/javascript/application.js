// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// require images
const images = require.context('../images', true)

import './components/pricing'
import './components/modal_charte'
import './components/caroussel'
import './components/dashboard'

//import "trix"
//import "@rails/actiontext"


require("trix")
require("@rails/actiontext")
