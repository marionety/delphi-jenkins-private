rem Hay que cargar variables de entorno para poder compilar
rem call "C:\Program Files\Embarcadero\Studio\14.0\bin\rsvars.bat"

rem Instrucción MSBuild para compilar SIGGER
rem msbuild.exe /target:SIGGER /p:config=Debug  "C:\Desarrollo\Vista SIGGER\sigger.dproj" 

SET MSBuild="C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe"
SET BUILDS=C:\Program Files (x86)\Jenkins\jobs\pruebacompilacion\builds\
SET OUTPUT_PATH=".\Output"
SET RSVARS="C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\rsvars.bat"
CALL %RSVARS%
SET PATH=%PATH%
SET SEARCH_PATH=".\Librerias\Output;.\TestsUnitarios\Output"

echo Current Folder: %cd% 
echo Current SEARCH_PATH: %cd%%SEARCH_PATH%

%MSBuild% TestsUnitarios\TestsUnitariosLibreria.dproj /t:Build /p:Config=Release;DCC_UnitSearchPath=%SEARCH_PATH%;DCC_DcuOutput=%OUTPUT_PATH%
%MSBuild% TestsUnitarios\TestsUnitarios.dproj /t:Build /p:Config=Release;DCC_UnitSearchPath=%SEARCH_PATH%

".\TestsUnitarios\Win32\Release\TestsUnitarios.exe"