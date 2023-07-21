import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

document.addEventListener('DOMContentLoaded', function() {
  const underline = document.getElementById('underline-scrolled');
  const landing = document.getElementById('landing');
  const loginButton = document.getElementById('login-button-scrolled');
  const signupButton = document.getElementById('signup-button-scrolled');
  const logo = document.getElementById('logo')

  const landingHeight = landing.offsetHeight;

  function applyStyles(scrollTop, landingHeight) {
    if (scrollTop >= landingHeight) {
      underline.classList.add('scrolled');
      loginButton.classList.add('scrolled-button');
      signupButton.classList.add('scrolled-button');
      loginButton.classList.remove('scrolled-button-inv');
      signupButton.classList.remove('scrolled-button-inv');
      logo.setAttribute('fill', 'red');
    } else {
      underline.classList.remove('scrolled');
      loginButton.classList.add('scrolled-button-inv');
      signupButton.classList.add('scrolled-button-inv');
      loginButton.classList.remove('scrolled-button');
      signupButton.classList.remove('scrolled-button');
      logo.setAttribute('fill', 'red');
    }
  }

  function onScroll() {
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    applyStyles(scrollTop, landingHeight);
  }

  // Call onScroll initially to apply the styles when the page loads
  onScroll();

  // Attach the onScroll function to the scroll event
  window.addEventListener('scroll', onScroll);
});
