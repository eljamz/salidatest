import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "rsvpId" ]

  connect() {
    this.modal = new bootstrap.Modal(this.element)
  
    const newRsvpId = this.element.dataset.newRsvpId
    if (newRsvpId) {
      this.modal.show()
      this.rsvpIdTarget.textContent = `New RSVP ID: ${newRsvpId}`
    }
  }

  disconnect() {
    this.modal.dispose()
  }
}