const html = document.documentElement
const themeButtons = document.querySelectorAll('[data-set-theme]');

const saveTheme = (theme) => {
  if (window.localStorage) {
    localStorage['theme'] = theme;
  }
}

const loadSavedTheme = () => {
  if (window.localStorage) {
    const maybeTheme = localStorage['theme']
    if (maybeTheme) return maybeTheme
  }
  return null
}

const checkForSavedTheme = () => {
  const theme = loadSavedTheme()
  if (theme) html.dataset.theme = theme;
}

themeButtons.forEach((button) => {
  const theme = button.dataset.setTheme;
  
  button.addEventListener('click', () => {
    html.dataset.theme = theme;
    saveTheme(theme);
  })
})


checkForSavedTheme();

