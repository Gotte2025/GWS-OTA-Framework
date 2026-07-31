@echo off
setlocal EnableDelayedExpansion
title GWS OTA Framework - Importar Proyecto
color 0E

cls
echo.
echo ==========================================================
echo            GWS OTA FRAMEWORK
echo             Importar Proyecto
echo ==========================================================
echo.

:: Carpeta raiz del Framework
set ROOT=%~dp0..
cd /d "%ROOT%"

if not exist "projects" mkdir "projects"

echo Ruta completa del archivo .ino
echo Ejemplo:
echo C:\Users\Lucas\Documents\MiProyecto\MiProyecto.ino
echo.

set /p INO=Archivo:

if not exist "%INO%" (
    echo.
    echo ERROR: No existe el archivo.
    pause
    exit /b
)

for %%F in ("%INO%") do (
    set NOMBRE=%%~nF
    set CARPETA=%%~dpF
)

echo.
echo Nombre del proyecto:
echo %NOMBRE%

if exist "projects\%NOMBRE%" (
    echo.
    echo Ya existe un proyecto con ese nombre.
    pause
    exit /b
)

mkdir "projects\%NOMBRE%"

copy "%INO%" "projects\%NOMBRE%\%NOMBRE%.ino" >nul

:: secrets.h
if exist "%CARPETA%secrets.h" (
    copy "%CARPETA%secrets.h" "projects\%NOMBRE%\" >nul
)

:: data
if exist "%CARPETA%data" (
    xcopy "%CARPETA%data" "projects\%NOMBRE%\data\" /E /I /Y >nul
)

echo.
echo Seleccione la placa
echo.
echo 1 - Wemos D1 Mini
echo 2 - NodeMCU
echo 3 - ESP01
echo 4 - ESP32
echo.

set /p P=

if "%P%"=="1" set BOARD=esp8266:esp8266:d1_mini
if "%P%"=="2" set BOARD=esp8266:esp8266:nodemcuv2
if "%P%"=="3" set BOARD=esp8266:esp8266:generic
if "%P%"=="4" set BOARD=esp32:esp32:esp32

echo %BOARD%>projects\%NOMBRE%\board.txt

echo 1.0.0>projects\%NOMBRE%\version.txt

(
echo ArduinoJson
)>projects\%NOMBRE%\libraries.txt

(
echo # %NOMBRE%
echo.
echo Proyecto importado automaticamente.
)>projects\%NOMBRE%\README.md

echo.
echo ===============================================
echo Proyecto importado correctamente.
echo ===============================================
echo.

pause