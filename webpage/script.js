// Minimal JS: toggles "dark" class and shows a short message
const btn = document.getElementById('toggle');
const msg = document.getElementById('message');
function show(text){ msg.textContent = text; msg.style.opacity = 1; setTimeout(()=>msg.style.opacity = 0, 1400); }
btn.addEventListener('click', ()=>{ document.documentElement.classList.toggle('dark'); show('Theme toggled'); });
