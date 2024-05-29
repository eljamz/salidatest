import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "rsvpId" ]

  connect() {
    console.log('connect method called')
    this.modal = new bootstrap.Modal(this.element)
    console.log('Modal instance created:', this.modal)
  
    this.element.addEventListener('show.bs.modal', () => {
      console.log('Modal is being shown')
    })
  
    this.element.addEventListener('hide.bs.modal', () => {
      console.log('Modal is being hidden')
    })
  
    const newRsvpId = this.element.dataset.newRsvpId
    if (newRsvpId) {
      console.log('Showing modal...')
      this.modal.show()
      console.log('New RSVP ID:', newRsvpId)
      this.rsvpIdTarget.textContent = `New RSVP ID: ${newRsvpId}`
    }
  }

  disconnect() {
    this.modal.dispose()
  }
}