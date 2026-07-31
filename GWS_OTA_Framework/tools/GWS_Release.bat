@echo off
title GWS OTA Framework - Publicar
color 0A

cls

echo ============================================
echo      PUBLICANDO EN GITHUB
echo ============================================
echo.

git add .

echo.

set /p MSG=Mensaje del Commit:

if "%MSG%"=="" set MSG=Actualizacion OTA

git commit -m "%MSG%"

git push origin main

echo.

echo ============================================
echo Publicacion Finalizada
echo ============================================

pause