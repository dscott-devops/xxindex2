// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import "bootstrap"
import "../stylesheets/application"
import "@fortawesome/fontawesome-free/css/all"
import 'bootstrap-icons/font/bootstrap-icons.css'


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("DOMContentLoaded", function(event) {
  const showNavbar = (toggleId, navId, bodyId, headerId) => {
    const toggle = document.getElementById(toggleId),
      nav = document.getElementById(navId),
      bodypd = document.getElementById(bodyId),
      headerpd = document.getElementById(headerId)
      // Validate that all variables exist
    if(toggle && nav && bodypd && headerpd) {
      toggle.addEventListener('click', () => {
        // show navbar
        nav.classList.toggle('show')
          // change icon
        toggle.classList.toggle('bx-x')
          // add padding to body
        bodypd.classList.toggle('body-pd')
          // add padding to header
        headerpd.classList.toggle('body-pd')
      })
    }
  }
  showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')
    /*===== LINK ACTIVE =====*/
  const linkColor = document.querySelectorAll('.nav_link')

  function colorLink() {
    if(linkColor) {
      linkColor.forEach(l => l.classList.remove('active'))
      this.classList.add('active')
    }
  }
  linkColor.forEach(l => l.addEventListener('click', colorLink))
    // Your code to run since DOM is loaded and ready
});
</script>
<script>
function openNav() {
  if(document.getElementById("mySidenav").style.width == "0px") {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginRight = "250px";
  } else {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginRight = "0";
  }
}
