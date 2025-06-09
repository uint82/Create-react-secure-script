@echo off
SETLOCAL EnableDelayedExpansion

REM Check if project name is provided
IF "%~1"=="" (
  ECHO Usage: create-react-secure project-name
  EXIT /B 1
)

SET PROJECT_NAME=%~1
ECHO Creating new React app: %PROJECT_NAME%

REM Run create-react-app
call npx create-react-app %PROJECT_NAME%
IF %ERRORLEVEL% NEQ 0 (
  ECHO Failed to create React app
  EXIT /B 1
)

ECHO.
ECHO Now applying security overrides...

REM Navigate to project directory
cd %PROJECT_NAME%

REM Add overrides to package.json
ECHO Adding security overrides to package.json...
call node -e "const fs=require('fs'); const pkg=JSON.parse(fs.readFileSync('package.json')); pkg.overrides={'react-scripts':{'@svgr/webpack':'8.1.0','typescript':'4.9.5','postcss':'8.4.38'}}; fs.writeFileSync('package.json', JSON.stringify(pkg, null, 2));"

REM Remove node_modules and package-lock.json
ECHO Removing node_modules and package-lock.json...
if exist node_modules rmdir /s /q node_modules
if exist package-lock.json del package-lock.json

REM Run npm install
ECHO Running npm install...
call npm install

ECHO.
ECHO Project '%PROJECT_NAME%' created successfully with security overrides applied!
ECHO.
ECHO To start the development server, run:
ECHO   cd %PROJECT_NAME%
ECHO   npm start

EXIT /B 0
