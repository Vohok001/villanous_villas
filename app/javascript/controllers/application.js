import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

console.log("Connected")
const btn = document.getElementById("click-me")
console.log(btn)
btn.addEventListener("click", () => {
  const audio = new Audio("./Evil_laugh.mp3");
  audio.play();
});
