@echo off
setlocal
echo ========================================================
echo Importing ShopSphere Database into MySQL...
echo ========================================================

rem Auto-detect SQL file location
set "SQL_FILE="
if exist "%~dp0ShopSphere\database\shopsphere.sql" (
    set "SQL_FILE=%~dp0ShopSphere\database\shopsphere.sql"
) else if exist "%~dp0JAVA_PROJECT\ShopSphere\database\shopsphere.sql" (
    set "SQL_FILE=%~dp0JAVA_PROJECT\ShopSphere\database\shopsphere.sql"
) else if exist "P:\CODING\ADV. JAVA LAB\JAVA_PROJECT\ShopSphere\database\shopsphere.sql" (
    set "SQL_FILE=P:\CODING\ADV. JAVA LAB\JAVA_PROJECT\ShopSphere\database\shopsphere.sql"
)

if "%SQL_FILE%"=="" (
    echo [ERROR] Could not locate shopsphere.sql!
    pause
    exit /b 1
)

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -pmydevsql < "%SQL_FILE%"
if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================================
    echo [SUCCESS] Database 'shopsphere' and seed data imported!
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo [ERROR] Failed to connect to MySQL.
    echo Please ensure the MySQL service is RUNNING on your system!
    echo (You can start it in Windows Services: press Win+R -> services.msc -> find MySQL80 -> click Start)
    echo ========================================================
)
pause
