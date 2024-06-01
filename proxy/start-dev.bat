@echo off
REM Set Keycloak environment variables
set KC_HOSTNAME_URL=https://your_domain.com
set KC_HOSTNAME_ADMIN_URL=https://your_domain.com

REM Start Keycloak
.\bin\kc.bat start-dev --proxy=edge --hostname-strict=true