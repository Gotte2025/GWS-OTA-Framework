@echo off
setlocal EnableDelayedExpansion

set ROOT=%~dp0..
cd /d "%ROOT%"

set CONT=0

for /d %%D in (projects\*) do (

    set /a CONT+=1

    set P!CONT!=%%~nxD

    echo !CONT! - %%~nxD

)

echo.

set /p SEL=Proyecto:

if "!P%SEL%!"=="" exit

echo !P%SEL%!