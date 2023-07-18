import Turbo from "@hotwired/turbo-rails";
import "./controllers";
import "bootstrap";

window.addEventListener('scroll', function() {
  const currentPage = document.body.getAttribute('data-page');
  if (currentPage === 'home') {
    return; // Exit the function if the current page is home
  }

  const underline = document.getElementById('underline-scrolled');
  const landing = document.getElementById('landing');
  const loginButton = document.getElementById('login-button-scrolled');
  const signupButton = document.getElementById('signup-button-scrolled');
  const svgBurgerPaths = document.querySelectorAll('.burger path');
  const svgBurger = document.querySelector('.burger');

  const landingHeight = landing.offsetHeight;
  const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

  if (scrollTop >= landingHeight) {
    underline.classList.remove('scrolled');
    loginButton.classList.add('scrolled-button');
    signupButton.classList.add('scrolled-button');
    loginButton.classList.remove('scrolled-button-inv');
    signupButton.classList.remove('scrolled-button-inv');
    svgBurgerPaths.forEach(path => path.classList.add('scrolled-color'));
  } else {
    underline.classList.add('scrolled');
    loginButton.classList.add('scrolled-button-inv');
    signupButton.classList.add('scrolled-button-inv');
    loginButton.classList.remove('scrolled-button');
    signupButton.classList.remove('scrolled-button');
    svgBurgerPaths.forEach(path => path.classList.remove('scrolled-color'));
  }
});
