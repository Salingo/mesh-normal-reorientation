@echo OFF
@title Reorientation Scripting

@set PATH=%~dp0
@set inputFolder=%PATH%input
@set outputFolder=%PATH%output
@set MeshFormat=obj
@set options=-v
@set exePath="%PATH%reorient_facets.exe"

for %%X in (%inputFolder%\*.%MeshFormat%) do (echo "%%X")
cd %inputFolder%
for %%I in (*.%MeshFormat%) do (%exePath% %options% %%I %outputFolder%\%%~nI.%MeshFormat%)

echo Script Complete
PAUSE
