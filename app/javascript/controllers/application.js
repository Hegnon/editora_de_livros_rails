import { Application } from "@hotwired/stimulus"
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap'

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

//= require jquery
//= require popper
//= require bootstrap
