@echo off
echo ========================================================
echo Importing ShopSphere Database into MySQL...
echo ========================================================
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -pmydevsql < "%~dp0JAVA_PROJECT\ShopSphere\database\shopsphere.sql"
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
