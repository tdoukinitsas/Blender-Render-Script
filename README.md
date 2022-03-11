# Blender Render Script
Quick batch script that renders a watch folder with Blender files

# Usage
download the .bat file using a text editor, and replace the 3 variables at the beginning of the file

```
blenderfolder = The folder where blender is located, for example C:\Program Files\Blender Foundation\Blender 3.1

projectsfolder = The folder where the blender projects are going to be added

outputfolder = The folder where the frames will be rendered to
```

Make sure that there are no spaces between the = sign

Your first 4 lines should look a bit like this:

```
@echo off
set blenderfolder=C:\Program Files\Blender Foundation\Blender 3.1
set projectsfolder=M:\Blender_Render\projects_to_render\
set outputfolder=M:\Blender_Render\output_frames\
```

Then run the .bat file, the script should start running and automatically render everything in the projects_to_render folder

# Notes
Project files get deleted after rendering has finished
