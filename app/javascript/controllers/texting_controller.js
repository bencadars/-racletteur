import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="texting"
export default class extends Controller {
  connect() {
    console.log("bonjour");
    const typed = new Typed('#title', {
      strings: ["A <strong>raclette</strong> you say ?"],
      typeSpeed: 50,
      loop: false,
      loopCount: Infinity
    });
  }
}
