@echo off
title GWS OTA Framework v1.0
color 0A

:MENU
cls

echo.
echo ==============================================================
echo               GWS OTA FRAMEWORK v1.0
echo                 Grey Wolf Solutions
echo ==============================================================
echo.
echo  [1] Crear nuevo proyecto
echo.
echo  [2] Importar proyecto Arduino
echo.
echo  [3] Compilar proyecto
echo.
echo  [4] Agregar librerias
echo.
echo  [5] Publicar en GitHub
echo.
echo  [6] Configuracion
echo.
echo  [7] Acerca del Framework
echo.
echo  [0] Salir
echo.
echo ==============================================================

set /p OPCION=Seleccione una opcion:

if "%OPCION%"=="1" goto NUEVO
if "%OPCION%"=="2" goto IMPORTAR
if "%OPCION%"=="3" goto COMPILAR
if "%OPCION%"=="4" goto LIBRERIAS
if "%OPCION%"=="5" goto GITHUB
if "%OPCION%"=="6" goto CONFIG
if "%OPCION%"=="7" goto ABOUT
if "%OPCION%"=="0" exit

goto MENU

:NUEVO
cls
echo.
echo Ejecutando GWS_NewProject.bat...
echo.

if exist GWS_NewProject.bat (
    call GWS_NewProject.bat
) else (
    echo No se encontro GWS_NewProject.bat
    pause
)

goto MENU


:IMPORTAR
cls
echo.
echo Ejecutando GWS_ImportProject.bat...
echo.

if exist GWS_ImportProject.bat (
    call GWS_ImportProject.bat
) else (
    echo No se encontro GWS_ImportProject.bat
    pause
)

goto MENU


:COMPILAR
cls
echo.
echo Ejecutando GWS_Compile.bat...
echo.

if exist GWS_Compile.bat (
    call GWS_Compile.bat
) else (
    echo No se encontro GWS_Compile.bat
    pause
)

goto MENU


:LIBRERIAS
cls
echo.
echo Ejecutando GWS_AddLibrary.bat...
echo.

if exist GWS_AddLibrary.bat (
    call GWS_AddLibrary.bat
) else (
    echo No se encontro GWS_AddLibrary.bat
    pause
)

goto MENU


:GITHUB
cls
echo.
echo Ejecutando GWS_Release.bat...
echo.

if exist GWS_Release.bat (
    call GWS_Release.bat
) else (
    echo No se encontro GWS_Release.bat
    pause
)

goto MENU


:CONFIG
cls
echo.
echo =====================================================
echo CONFIGURACION
echo =====================================================
echo.
echo Esta funcion estara disponible en la Version 1.1
echo.
pause

goto MENU


:ABOUT
cls
echo.
echo =====================================================
echo GWS OTA FRAMEWORK
echo =====================================================
echo.
echo Version : 1.0
echo.
echo Autor   : Grey Wolf Solutions
echo.
echo Objetivo:
echo.
echo Compilar proyectos ESP8266 y ESP32 automaticamente
echo utilizando GitHub Actions y OTA.
echo.
echo https://github.com/Gotte2025
echo.
pause

goto MENU