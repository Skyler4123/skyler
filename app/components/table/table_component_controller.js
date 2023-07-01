import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['table', 'header', 'body', 'row']
  connect() {
    console.log("Hello, Stimulus!");
  }
}
