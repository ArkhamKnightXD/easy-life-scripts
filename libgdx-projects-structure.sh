#!/bin/bash
# A simple Bash Script To Generate My Libgdx Projects Folder Structure

echo Iniciando Script

echo Digite el nombre del folder del proyecto:

read projectFolderName

cp -r C:/Projects/easy-life-scripts/libgdx-mockup-classes/helpers C:/Projects/Game-Development/$projectFolderName/core/src/main/java/knight/arkham
cp -r C:/Projects/easy-life-scripts/libgdx-mockup-classes/objects C:/Projects/Game-Development/$projectFolderName/core/src/main/java/knight/arkham
cp -r C:/Projects/easy-life-scripts/libgdx-mockup-classes/screens C:/Projects/Game-Development/$projectFolderName/core/src/main/java/knight/arkham

cd C:/Projects/Game-Development/$projectFolderName/assets/

mkdir data
mkdir fx
mkdir images
mkdir maps

echo Proceso Completado


