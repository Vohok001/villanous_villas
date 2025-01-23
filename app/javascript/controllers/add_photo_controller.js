import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="add-photo"
export default class extends Controller {
  static targets = ["photoList", "photoTemplate"]; // Targets for dynamic photo fields

  addPhoto() {
    const templateContent = this.photoTemplateTarget.content.cloneNode(true); // Clone template
    this.photoListTarget.appendChild(templateContent); // Append to the list
  }
}
