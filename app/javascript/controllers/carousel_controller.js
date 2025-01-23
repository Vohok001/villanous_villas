import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["viewport", "slide"];

  connect() {
    this.currentIndex = 0; // Start at the first slide
    this.update();
  }

  prev(event) {
    event.preventDefault(); // Prevent the default anchor behavior
    this.currentIndex =
      (this.currentIndex - 1 + this.slideTargets.length) %
      this.slideTargets.length;
    this.update();
  }

  next(event) {
    event.preventDefault(); // Prevent the default anchor behavior
    this.currentIndex =
      (this.currentIndex + 1) % this.slideTargets.length;
    this.update();
  }

  update() {
    const offset = -this.currentIndex * 100;
    this.viewportTarget.style.transform = `translateX(${offset}%)`;
    this.viewportTarget.style.transition = "transform 0.5s ease-in-out";
  }
}
