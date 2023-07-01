import { Controller } from "@hotwired/stimulus";
import Flatpickr from 'flatpickr';

export default class extends Controller {
  static targets = ["template"]
  connect() {
    console.log("Hello, Stimulus!", this.templateTarget);
    Flatpickr(this.templateTarget, { enableTime: true, dateFormat: "Y-m-d H:i", })
  }
}
