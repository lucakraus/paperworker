// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import { initSweetalert } from './plugins/init_sweetalert';

initSweetalert('#submit-button', {
  title: "Are you sure?",
  text: "This will send a request to the paperworker to confirm",
  icon: "warning"
}, (value) => {
  if (value) {
    const form = document.querySelector('#appointment-form')
    form.submit();
  }
});
