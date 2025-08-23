@echo off
echo Starting Node.js server...
start cmd /k "cd /d .\server && npm run start"

echo Starting React app...
start cmd /k "cd /d .\client && npm start"

echo Both servers are starting!