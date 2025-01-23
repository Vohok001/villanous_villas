import { Controller } from "@hotwired/stimulus";
import { Turbo } from "@hotwired/turbo-rails";

export default class extends Controller {
  static targets = ["query", "results"]

  connect() {
    this.search();
  }

  search() {
    const searchUrl = this.element.dataset.searchUrl;

    const url = new URL(searchUrl, window.location.origin);
    url.searchParams.append("query", this.queryTarget.value);

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
