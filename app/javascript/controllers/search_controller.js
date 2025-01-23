import { Controller } from "@hotwired/stimulus";
import { Turbo } from "@hotwired/turbo-rails";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["query", "results", "checkIn", "checkOut"];

  connect() {
    if (this.hasCheckInTarget) {
      flatpickr(this.checkInTarget, {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d"
      });
    }

    if (this.hasCheckOutTarget) {
      flatpickr(this.checkOutTarget, {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d"
      });
    }
    this.search();
  }

  search() {
    const searchUrl = this.element.dataset.searchUrl;

    const url = new URL(searchUrl, window.location.origin);
    // url.searchParams.append("query", this.queryTarget.value);
    if (this.hasQueryTarget) url.searchParams.append("query", this.queryTarget.value);
    if (this.hasCheckInTarget) url.searchParams.append("check_in", this.checkInTarget.value);
    if (this.hasCheckOutTarget) url.searchParams.append("check_out", this.checkOutTarget.value);

    fetch(url.toString(), {
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
    .then(response => response.text())
    .then(html => {
      Turbo.renderStreamMessage(html);
    });
  }
}
