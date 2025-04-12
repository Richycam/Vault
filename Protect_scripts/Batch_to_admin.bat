@echo off
:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo You must run this script as an administrator.
    pause
    exit /b
)

:: Path to the environment file YOU NEED TO SET THIS 
set "envFile1=C:\path\to\your\env\password.env"

set "envFile2=C:\path\to\your\env\vault.env"

:: Check if the environment file exists
if not exist "%envFile1%" (
    echo Environment file not found: %envFile1%
    pause
    exit /b
)
if not exist "%envFile2%" (
    echo Environment file not found: %envFile2%
    pause
    exit /b
)


:: Load environment variables from the file
for /f "usebackq tokens=1,* delims==" %%i in ("%envFiles1%") do (
    set "%%i=%%j"
)

for /f "usebackq tokens=1,* delims==" %%i in ("%envFiles2%") do (
    set "%%i=%%j"
)



echo Environment variables loaded successfully.
pause
