rem Hay que cargar variables de entorno para poder compilar
rem call "C:\Program Files\Embarcadero\Studio\14.0\bin\rsvars.bat"

rem Instrucción MSBuild para compilar SIGGER
rem msbuild.exe /target:SIGGER /p:config=Debug  "C:\Desarrollo\Vista SIGGER\sigger.dproj" 

SET MSBuild="C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe"
SET BUILDS=C:\Program Files (x86)\Jenkins\jobs\pruebacompilacion\builds\
SET OUTPUT_PATH=C:\Users\marioromero\Desktop
SET RSVARS="C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\rsvars.bat"
CALL %RSVARS%
SET PATH=%PATH%
SET SEARCH_PATH="C:\Users\marioromero\.jenkins\jobs\Prueba Compilacion Libreria\workspace\Librerias\Output"

echo Current Folder: %cd% 
echo Current SEARCH_PATH: %cd%%SEARCH_PATH%
%MSBuild% Vistas\ProyectoVistas.dproj /t:Build /p:Config=Release;DCC_UnitSearchPath=%SEARCH_PATH%
move "%cd%\Vistas\Win32\Release\ProyectoVistas.exe" "%OUTPUT_PATH%\PV.exe"