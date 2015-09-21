rem Hay que cargar variables de entorno para poder compilar
rem call "C:\Program Files\Embarcadero\Studio\14.0\bin\rsvars.bat"

rem Instrucción MSBuild para compilar SIGGER
rem msbuild.exe /target:SIGGER /p:config=Debug  "C:\Desarrollo\Vista SIGGER\sigger.dproj" 

SET MSBuild="C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe"
SET BUILDS=C:\Program Files (x86)\Jenkins\jobs\pruebacompilacion\builds\
SET OUTPUT_PATH="%BUILDS%%BUILD_NUMBER%"
SET RSVARS="C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\rsvars.bat"
CALL %RSVARS%
SET PATH=%PATH%;

echo Current Folder: %cd% 
%MSBuild% Vistas/ProyectoVistas.dproj /t:Build /p:Config=Debug;Platform=Win32;DCU_DcuOutput=%OUTPUT_PATH% /maxcpucount:4