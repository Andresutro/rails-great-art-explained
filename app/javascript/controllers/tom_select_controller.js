import { Controller } from "@hotwired/stimulus";
import TomSelect from "tom-select";

export default class extends Controller {
  connect() {
    new TomSelect(this.element);
  }

  disconnect() {
    // Limpia cualquier lógica de conexión aquí, si es necesario.
  }
}
