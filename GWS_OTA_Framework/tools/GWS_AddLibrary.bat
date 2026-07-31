@echo off
setlocal EnableDelayedExpansion
title GWS OTA Framework - Agregar Libreria
color 0B

set ROOT=%~dp0..
cd /d "%ROOT%"

cls

echo ============================================
echo        GWS OTA FRAMEWORK
echo        Agregar Libreria
echo ============================================
echo.

set CONT=0

for /d %%D in (projects\*) do (
    set /a CONT+=1
    set P!CONT!=%%~nxD
    echo !CONT! - %%~nxD
)

echo.

set /p SEL=Proyecto:

if "!P%SEL%!"=="" exit

set PROYECTO=!P%SEL%!

echo.

set /p LIB=Nombre de la libreria:

if "%LIB%"=="" exit

echo %LIB%>>projects\%PROYECTO%\libraries.txt

echo.
echo Libreria agregada correctamente.
echo.

pause