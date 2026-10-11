@echo off
echo ========================================================
echo Starting ShopSphere Desktop Swing Inventory Viewer...
echo ========================================================
cd /d "%~dp0JAVA_PROJECT\ShopSphere"
java -cp "target/classes;target/ShopSphere/WEB-INF/lib/*" com.shopsphere.desktop.SwingInventoryViewer
if %ERRORLEVEL% neq 0 (
    echo.
    echo If you see a database error, please ensure your MySQL service is started!
    pause
)
