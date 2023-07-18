window.addEventListener('scroll', function() {
  const underline = document.getElementById('underline-scrolled');
  const landing = document.getElementById('landing');
  const loginButton = document.getElementById('login-button-scrolled');
  const signupButton = document.getElementById('signup-button-scrolled');
  const logo = document.getElementById('logo');

  const landingHeight = landing.offsetHeight;
  const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

  if (scrollTop >= landingHeight) {
    underline.classList.remove('scrolled');
    loginButton.classList.add('scrolled-button');
    signupButton.classList.add('scrolled-button');
    loginButton.classList.remove('scrolled-button-inv');
    signupButton.classList.remove('scrolled-button-inv');
    logo.style.setProperty('fill', 'black');
  } else {
    underline.classList.add('scrolled');
    loginButton.classList.add('scrolled-button-inv');
    signupButton.classList.add('scrolled-button-inv');
    loginButton.classList.remove('scrolled-button');
    signupButton.classList.remove('scrolled-button');
    logo.style.removeProperty('fill', 'red');
    logo.style.setProperty('fill', 'white');
  }
});

