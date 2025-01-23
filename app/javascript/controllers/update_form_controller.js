import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-form"
export default class extends Controller {
  static targets = [ "form", "container" ]
  connect() {
    console.log("Hello from update_form_controller.js")
    console.log(this.formTarget)
    console.log(this.containerTarget)
  }
  update(event) {
    event.preventDefault();
    console.log("Form is being submitted via AJAX...");
    fetch(this.formTarget.action, {
      method: "PATCH", // Could be dynamic with Stimulus values
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      if (data.show) {
        this.containerTarget.innerHTML = data.show
        // beforeend could also be dynamic with Stimulus values
      }
    })
  }
}
