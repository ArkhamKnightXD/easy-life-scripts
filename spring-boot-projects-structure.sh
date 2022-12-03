#!/bin/bash
# A simple Bash Script To Generate My Spring Boot Projects Folder Structure

echo Iniciando Script

echo Digite el nombre del folder del proyecto:

read projectFolderName

echo Digite el nombre del folder principal:

read mainFolderName

cd C:/Projects/Backend-Development/$projectFolderName/src/main/java/knight/arkham/$mainFolderName

mkdir config
mkdir controllers
mkdir models
mkdir repositories
mkdir services

echo Proceso Completado