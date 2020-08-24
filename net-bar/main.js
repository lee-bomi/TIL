const toggleBtn = document.querySelector(".navbar___toggleBtn");
const menu = document.querySelector(".navbar___menu");
const icon = document.querySelector(".navbar___icons");

toggleBtn.addEventListener("click", () => {
  menu.classList.toggle("active");
  icon.classList.toggle("active");
});
