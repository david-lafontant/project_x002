import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scrolling"
export default class extends Controller {
  connect() {
    var navbar = document.querySelector('nav');

    document.addEventListener('scroll',()=> navbar.classList.remove('scrolled'));
    document.addEventListener('scrollend', ()=> navbar.classList.add('scrolled'));


    // window.onscroll = function() {
    //   if (window.scrollY > 0 ) {
    //     navbar.classList.add('scrolled')
    //   } else {
    //     navbar.classList.remove('scrolled')
    //   }
    // }

  }
}
