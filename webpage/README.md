# Small Webpage (example)

This is a tiny static webpage demo created as part of the `shellscripts` workspace. It demonstrates a simple HTML/CSS/JS layout and a single interactive feature.

Files
- `index.html` — the page markup.
- `styles.css` — minimal styling and a dark-mode color scheme.
- `script.js` — tiny JS that toggles dark mode and shows a short message.

How to open
1. Open `webpage/index.html` in any modern browser (double-click or use `Open File`).
2. Or serve it locally (recommended) using a simple static server; for example with Python 3:

```bash
# from the webpage directory
python -m http.server 8080
# then open http://localhost:8080 in your browser
```

Notes
- No build tools required — just static files.
- This project is intentionally small to be easy to inspect and extend.
