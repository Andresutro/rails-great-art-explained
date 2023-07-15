import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="aframe"
import 'aframe'

export default class extends Controller {
  connect() {
    this.element.addEventListener('loaded', this.onSceneLoaded)
  }

  disconnect() {
    this.element.removeEventListener('loaded', this.onSceneLoaded)
  }

  onSceneLoaded = (event) => {
    // La escena A-Frame ha cargado. Ahora puedes interactuar con ella.
    const box = this.element.querySelector('a-box')
    box.setAttribute('color', 'red')
  }
}
