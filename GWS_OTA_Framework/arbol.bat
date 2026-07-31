@echo off
chcp 6500eff > nul
echo Generando arbol de carpetas...
tree /f /a > arbol.txt
echo Listo! Archivo arbol.txt creado.
pause
