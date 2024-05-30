import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "rsvpId" ]

  connect() {
    document.addEventListener('rsvp:created', this.showModal.bind(this))
  }

  disconnect() {
    document.removeEventListener('rsvp:created', this.showModal.bind(this))
  }

  showModal(event) {
    const rsvpId = event.detail.id
    console.log(event.detail)
    console.log('showModal called with RSVP ID:', rsvpId)
    this.rsvpIdTarget.textContent = `New RSVP ID: ${rsvpId}`
    const modalElement = document.getElementById('myModal')
    const modal = new bootstrap.Modal(modalElement)
    modal.show()
  }
}