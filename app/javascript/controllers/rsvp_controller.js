import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "list", "modal", "modalBody" ]

  submitForm(event) {
    let [data, status, xhr] = event.detail
    this.listTarget.innerHTML = xhr.response

    // Show the modal with the new RSVP's ID
    this.modalBodyTarget.textContent = `New RSVP ID: ${data.id}`
    this.modalTarget.dispatchEvent(new Event('show.bs.modal'))
  }
}