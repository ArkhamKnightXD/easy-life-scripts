#!/bin/bash
# A simple Bash Script To Generate My Spring Boot Projects Folder Structure

echo Iniciando Script

echo Digite el nombre del folder del proyecto:

read projectFolderName

echo Digite el nombre del folder principal:

read mainFolderName


#De esta forma copio carpetas y sus contenidos de un sitio a otro. El primer path es el source y el otro el destination
cp -r C:/Projects/easy-life-scripts/spring-mockup-classes/controllers C:/Projects/Backend-Development/$projectFolderName/src/main/java/knight/arkham/$mainFolderName
cp -r C:/Projects/easy-life-scripts/spring-mockup-classes/services C:/Projects/Backend-Development/$projectFolderName/src/main/java/knight/arkham/$mainFolderName
cp -r C:/Projects/easy-life-scripts/spring-mockup-classes/entities C:/Projects/Backend-Development/$projectFolderName/src/main/java/knight/arkham/$mainFolderName
cp -r C:/Projects/easy-life-scripts/spring-mockup-classes/repositories C:/Projects/Backend-Development/$projectFolderName/src/main/java/knight/arkham/$mainFolderName
cp -r C:/Projects/easy-life-scripts/spring-mockup-classes/resources C:/Projects/Backend-Development/$projectFolderName/src/main/


echo Proceso Completado