@echo off
title GWS OTA Framework Installer v1.0
color 0A

echo.
echo ==========================================================
echo              GWS OTA FRAMEWORK v1.0
echo               Grey Wolf Solutions
echo ==========================================================
echo.

set /p BASE=Carpeta donde crear el Framework:

if "%BASE%"=="" goto salir

if not exist "%BASE%" (
    echo.
    echo La carpeta no existe.
    pause
    exit
)

cd /d "%BASE%"

mkdir GWS_OTA_Framework

cd GWS_OTA_Framework

echo.
echo Creando estructura...

mkdir config
mkdir docs
mkdir output
mkdir projects
mkdir templates
mkdir tools

mkdir .github
mkdir .github\workflows

echo.
echo Creando archivos...

echo # GWS OTA Framework>README.md

echo MIT License>LICENSE

(
echo [GENERAL]
echo Version=1.0
echo Autor=Grey Wolf Solutions
echo GitHub=
echo Rama=main
echo ProyectoActual=
)>config\config.ini

echo.
echo =============================================
echo Framework creado correctamente.
echo =============================================
echo.

pause

:salir