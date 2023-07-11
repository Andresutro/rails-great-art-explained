import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["counter"]

  updateCounter(event) {
    const numberOfCharacters = event.currentTarget.value.length;
    console.log(numberOfCharacters);
    if (numberOfCharacters > 0) {
      this.counterTarget.innerHTML = `${numberOfCharacters} characters`;
    } else {
      this.counterTarget.innerHTML = "";
    }
  }
}
