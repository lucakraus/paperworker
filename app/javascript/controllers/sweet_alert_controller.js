import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';

// Connects to data-controller="sweet-alert"
export default class extends Controller {
  static targets = ["form"]
  
  fire() {
    swal({
      title: "Are you sure?",
      text: "This will send a request to the paperworker to confirm",
      icon: "warning"
    }).then(value => {
      if (value) {
        this.formTarget.submit();
      }
    });
  }
}
