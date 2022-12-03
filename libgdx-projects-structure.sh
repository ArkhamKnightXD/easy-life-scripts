#!/bin/bash
# A simple Bash Script To Generate My Libgdx Projects Folder Structure

echo Iniciando Script

echo Digite el nombre del folder del proyecto:

#De esta forma almaceno el input del usuario en una variable
read projectFolderName

#De esta forma utilizo la variable, los / deben de ser en esta dirección o sino habra error a la hora de utilizar variables. 
cd C:/Projects/Game-Development/$projectFolderName/core/src/main/java/knight/arkham

mkdir helpers
mkdir scenes
mkdir screens
mkdir sprites

echo Proceso Completado


