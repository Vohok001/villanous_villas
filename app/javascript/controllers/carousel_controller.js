import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["viewport", "slide"];

  connect() {
    this.currentIndex = 0;
    this.totalSlides = this.slideTargets.length; // Dynamically count slides
  }

  next() {
    this.currentIndex = (this.currentIndex + 1) % this.totalSlides; // Wrap around to first slide
    this.updateCarousel();
  }

  prev() {
    this.currentIndex =
      (this.currentIndex - 1 + this.totalSlides) % this.totalSlides; // Wrap around to last slide
    this.updateCarousel();
  }

  updateCarousel() {
    const offset = -this.currentIndex * 100; // Calculate slide offset
    this.viewportTarget.style.transform = `translateX(${offset}%)`;
  }
}
