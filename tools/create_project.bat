@echo off
setlocal EnableDelayedExpansion
title GWS OTA Framework - Crear Proyecto
color 0B

:: ============================================
:: GWS OTA Framework
:: Crear Proyecto
:: Grey Wolf Solutions
:: ============================================

cls
echo.
echo ==============================================
echo        GWS OTA FRAMEWORK
echo          Crear Proyecto
echo ==============================================
echo.

:: Obtener la carpeta raíz del Framework
set ROOT=%~dp0..
cd /d "%ROOT%"

:: Crear carpeta projects si no existe
if not exist "projects" mkdir "projects"

:: Nombre del proyecto
set /p PROYECTO=Nombre del proyecto:

if "%PROYECTO%"=="" (
    echo.
    echo Debe ingresar un nombre.
    pause
    exit /b
)

if exist "projects\%PROYECTO%" (
    echo.
    echo El proyecto ya existe.
    pause
    exit /b
)

echo.
echo Seleccione la placa:
echo.
echo 1 - Wemos D1 Mini
echo 2 - NodeMCU v2
echo 3 - ESP-01
echo 4 - ESP32 DevKit
echo.

set /p PLACA=Opcion:

if "%PLACA%"=="1" set BOARD=esp8266:esp8266:d1_mini
if "%PLACA%"=="2" set BOARD=esp8266:esp8266:nodemcuv2
if "%PLACA%"=="3" set BOARD=esp8266:esp8266:generic
if "%PLACA%"=="4" set BOARD=esp32:esp32:esp32

if "%BOARD%"=="" (
    echo.
    echo Opcion incorrecta.
    pause
    exit /b
)

echo.
set /p VERSION=Version inicial (1.0.0):

if "%VERSION%"=="" set VERSION=1.0.0

echo.
set /p DATA=Crear carpeta DATA? (S/N):

mkdir "projects\%PROYECTO%"
cd "projects\%PROYECTO%"

:: Crear sketch
(
echo /******************************************************
echo  *
echo  * %PROYECTO%
echo  * Grey Wolf Solutions
echo  *
echo ******************************************************/
echo.
echo void setup()
echo {
echo.
echo }
echo.
echo void loop()
echo {
echo.
echo }
)>%PROYECTO%.ino

:: board.txt
echo %BOARD%>board.txt

:: version.txt
echo %VERSION%>version.txt

:: libraries.txt
(
echo ArduinoJson
)>libraries.txt

:: secrets.h
(
echo //========================================
echo // secrets.h
echo //========================================
echo.
echo #define SECRET_SSID ""
echo #define SECRET_PASS ""
)>secrets.h

:: README
(
echo # %PROYECTO%
echo.
echo Proyecto generado automaticamente por
echo GWS OTA Framework.
)>README.md

:: Crear DATA
if /I "%DATA%"=="S" (

    mkdir data

    (
    echo ^<!DOCTYPE html^>
    echo ^<html^>
    echo ^<head^>
    echo ^<title^>%PROYECTO%^</title^>
    echo ^</head^>
    echo ^<body^>
    echo Proyecto %PROYECTO%
    echo ^</body^>
    echo ^</html^>
    )>data\index.html

    echo body{}>data\style.css

    echo console.log("GWS OTA");>data\script.js
)

echo.
echo ==========================================
echo Proyecto creado correctamente
echo ==========================================
echo.

echo Ruta:
echo %CD%

echo.
pause