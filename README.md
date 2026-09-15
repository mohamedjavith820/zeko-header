# Zeko Consult & Construction — Website Package

## 1. What is included

- `index.html` — the complete website page.
- `run-windows.bat` — one-click local server launcher for Windows.
- `run-macos-linux.sh` — local server launcher for macOS/Linux.
- `README.md` — quick setup and troubleshooting.
- `Zeko_Website_Run_Guide.docx` — detailed deployment/run guide.

## 2. Requirements

The website is a client-side HTML/CSS/JavaScript page.

Recommended:
- Windows, macOS, or Linux
- A modern browser: Chrome, Edge, Firefox, or Safari
- Python 3.x for the included local-server scripts

No Node.js, npm, database, PHP, Apache, or MySQL is required for this page.

## 3. Run on another computer

### Windows
1. Extract the ZIP.
2. Open the extracted folder.
3. Double-click `run-windows.bat`.
4. Open `http://localhost:8000` in the browser.

### macOS/Linux
1. Extract the ZIP.
2. Open Terminal in the extracted folder.
3. Run:
   `./run-macos-linux.sh`
4. Open `http://localhost:8000`.

Alternative:
`python3 -m http.server 8000`

Then open:
`http://localhost:8000`

## 4. Important dependency note

The page currently loads:
- Three.js r128 from cdnjs
- Google Fonts from fonts.googleapis.com

Therefore the computer needs internet access for the 3D animation library and web fonts to load exactly as designed.

The page still contains system font fallbacks, but the Three.js scene requires the Three.js CDN to be reachable.

## 5. Why use a local HTTP server?

Do not rely only on double-clicking `index.html` as a `file://` page when testing.

Using a local server:
- behaves more like real web hosting,
- avoids common browser restrictions,
- makes the package easy to test before deployment.

## 6. Deployment

This is a static website. Upload the contents of this package to a static hosting provider or web server.

The entry file must be:
`index.html`

No backend configuration is required for the supplied page.

## 7. Troubleshooting

### Blank or missing 3D scene
Check internet access and browser Developer Tools → Console.
The page needs access to the Three.js CDN.

### Fonts look different
Google Fonts may be blocked or unavailable. The page has fallback fonts.

### Port 8000 is already in use
Run:
`python -m http.server 8080`

Then open:
`http://localhost:8080`

### Python is not installed
Install Python 3, or use another static HTTP server. The website itself does not require Python at runtime.

## 8. Source structure

This version is intentionally packaged as a single HTML file. The page includes its CSS, JavaScript, and logo data inside `index.html`.

The design uses:
- responsive CSS
- Three.js 3D wireframe building animation
- mouse interaction
- animated particles
- responsive layout for mobile
- Google Fonts
