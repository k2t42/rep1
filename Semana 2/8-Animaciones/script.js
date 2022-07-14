"use strict";

const button = document.querySelector("button");
const heart = button.querySelector("svg");

function like(e) {
  e.preventDefault();
  heart.classList.toggle("like");
}

button.addEventListener("click", like);
