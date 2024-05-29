// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Application } from "@hotwired/stimulus"
import * as controllers from "controllers"

const application = Application.start()
Object.values(controllers).forEach(controller => {
  application.register(controller.identifier, controller.default)
})
