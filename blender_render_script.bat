@echo off
set blenderfolder=C:\Program Files\Blender Foundation\Blender 3.1
set projectsfolder=C:\Blender_Render\projects_to_render\
set outputfolder=C:\Blender_Render\output_frames\
color f1
echo BLENDER RENDER SCRIPT v1.0
echo written by Thomas Doukinitsas
echo www.doukinitsas.info   
echo .
echo .
echo .
echo -------------------------------------------------------
echo .
echo INSTRUCTIONS
echo 1. Put Blender Files in the projects_to_render folder
echo 2. Files get rendered in output_frames
echo .
echo WARNING:
echo Project files get deleted after rendering has finished
echo .
echo -------------------------------------------------------
echo .
echo Script will start searching folder automatically in a few seconds
timeout 5
color f0
cd %blenderfolder%
:loop
echo %time% Checking projects folder...
if exist "%projectsfolder%*.blend" (
color 0f
echo %time% Blend files found!

for %%a in ("%projectsfolder%*.blend") do (
echo RENDERING %%a
"%blenderfolder%\blender.exe" -b %%a -o "%outputfolder%%%~na\%%~na" -a
echo %time% RENDER COMPLETE
ping -n 20 localhost >nul
del "%%a"
echo %time% DELETED PROJECT FILE %%a
)
)
echo %time% Checked folders, waiting 60 seconds for next check
color f1
ping -n 60 localhost >nul
goto :loop
