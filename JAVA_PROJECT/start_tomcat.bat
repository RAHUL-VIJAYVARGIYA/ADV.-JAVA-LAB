@echo off
echo ========================================================
echo Starting Apache Tomcat 11 for ShopSphere...
echo ========================================================
echo Deploying latest ShopSphere.war to Tomcat webapps...
copy /Y "%~dp0JAVA_PROJECT\ShopSphere\target\ShopSphere.war" "P:\DEV TOOLS\apache-tomcat-11.0.26\webapps\"
echo.
echo Launching Tomcat Server in new window...
echo Once Tomcat says "Server startup in [X] milliseconds", open:
echo.
echo    http://localhost:8080/ShopSphere/
echo.
start "Apache Tomcat 11 - ShopSphere" "P:\DEV TOOLS\apache-tomcat-11.0.26\bin\startup.bat"
echo Tomcat window opened! You can close this terminal.
pause
