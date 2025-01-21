import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button-sound"
export default class extends Controller {
  static targets= [
    "btn"
  ]
  connect() {
    console.log("Connected")
    }
  play(event) {
 
    const audioPath = event.currentTarget.dataset.audioPath;
    if (audioPath) {
      const audio = new Audio(audioPath);
      audio.play();
    } else {
      console.error("No audio path found!");
    }
  }
}
