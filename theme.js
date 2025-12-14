const themeToggle = document.getElementById("theme-toggle");
const body = document.body;
const currentTheme = localStorage.getItem("theme") || "light";
body.classList.toggle("dark", currentTheme === "dark");
themeToggle.textContent = currentTheme === "dark" ? "☀️" : "🌙";

themeToggle.addEventListener("click", () => {
  body.classList.toggle("dark");
  const theme = body.classList.contains("dark") ? "dark" : "light";
  localStorage.setItem("theme", theme);
  themeToggle.textContent = theme === "dark" ? "☀️" : "🌙";
});
