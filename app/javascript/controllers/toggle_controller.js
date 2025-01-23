import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "toggleableElement", "form"]

  connect() {
    console.log("Hello from toggle_controller.js")
  }
  fire() {
    this.toggleableElementTarget.classList.toggle("d-none")
  }
  update(event) {
    event.preventDefault();
    // You can also log the form data or do additional checks here before submitting via AJAX
    console.log("Form is being submitted via AJAX...")

    // Submit the form via AJAX (assuming you're using simple_form and it has AJAX support)
    this.formTarget.requestSubmit()
  }
}
