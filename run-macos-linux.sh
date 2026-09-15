#!/bin/sh
echo "Starting Zeko website on http://localhost:8000"
echo "Keep this terminal open while using the website."
echo "Press Ctrl+C to stop the server."
python3 -m http.server 8000
