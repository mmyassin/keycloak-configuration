@echo off
REM Set Keycloak environment variables
set KC_DB=mssql
set KC_DB_URL=jdbc:sqlserver://SQL_HOST:PORT;databaseName=DATABASE_NAME;trustServerCertificate=true
set KC_DB_USERNAME=SQL_USER
set KC_DB_PASSWORD=SQL_USER_PASSWORD
set KC_DB_TX_TYPE=enabled
set KC_DB_DRIVER=com.microsoft.sqlserver.jdbc.SQLServerDriver

REM Execute SQL commands
sqlcmd -S SQL_HOST -U SQL_USER -P SQL_USER_PASSWORD -i .\setup-mssql-server.sql

REM Check if SQL script execution was successful
if %errorlevel% neq 0 (
    echo SQL script execution failed.
    echo /b %errorlevel%
)

REM Start Keycloak
.\bin\kc.bat start-dev --transaction-xa-enabled=false