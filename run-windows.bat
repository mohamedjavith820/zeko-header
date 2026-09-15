@echo off
title Zeko Website Local Server
echo Starting Zeko website on http://localhost:8000
echo Keep this window open while using the website.
echo Press Ctrl+C to stop the server.
echo.
where py >nul 2>nul && (py -m http.server 8000) || python -m http.server 8000
