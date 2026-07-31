@echo off
setlocal EnableDelayedExpansion
title GWS OTA Framework - Compilar Proyecto
color 0A

::=========================================
:: GWS OTA Framework
:: Compile Project
:: Grey Wolf Solutions
::=========================================

cls

set ROOT=%~dp0..
cd /d "%ROOT%"

echo.
echo =============================================
echo            COMPILAR PROYECTO
echo =============================================
echo.

if not exist projects (
    echo No existe la carpeta projects
    pause
    exit
)

echo Proyectos disponibles
echo.

set CONT=0

for /d %%D in (projects\*) do (
    set /a CONT+=1
    set P!CONT!=%%~nxD
    echo !CONT! - %%~nxD
)

echo.

set /p SEL=Seleccione un proyecto:

if "!P%SEL%!"=="" (
    echo.
    echo Proyecto incorrecto.
    pause
    exit
)

set PROYECTO=!P%SEL%!

echo.
echo Proyecto seleccionado:

echo %PROYECTO%

echo.

copy "projects\%PROYECTO%\board.txt" output\board.txt >nul
copy "projects\%PROYECTO%\libraries.txt" output\libraries.txt >nul
copy "projects\%PROYECTO%\version.txt" output\version.txt >nul

echo %PROYECTO%>output\project.txt

echo.
echo =============================================
echo Proyecto preparado para GitHub Actions
echo =============================================
echo.

echo Siguiente paso:
echo.
echo Ejecutar GWS_Release.bat
echo.

pause