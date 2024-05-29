import { Application } from "@hotwired/stimulus"
import ModalController from "./modal_controller.js"
import RsvpController from "./rsvp_controller.js"

const application = Application.start()
application.register("modal", ModalController)
application.register("rsvp", RsvpController)
