#!/bin/bash
# A simple Bash Script To Install Spring-Boot Dependencies, 
#Se requiere la instalacion de gradle, no funciona como quisiera. Intentare mas cosas sino se quedara asi

echo Iniciando Script

cd C:/Projects/Backend-Development/

echo Descargando dependencias de los Proyectos Backend-Development

cd arkham-knight-practica13
gradle build

cd ..

cd breaking-bad-app
gradle build

cd ..

cd covid-19-app
gradle build

cd ..

cd game-changer
gradle build

cd ..

cd game-changer-backend-v2
gradle build

cd ..

cd loan-api
gradle build

cd ..

cd spring-boot-ontology-test
gradle build

cd ..

cd secure-app
gradle build

cd ..

cd shipping-api
gradle build

echo instalacion de dependencias de proyectos Backend-Development concluida

cd ..

cd ..

cd Game-Development
echo Descargando dependencias de los Proyectos Game-Development

cd gdx-playground
gradle build

cd ..

cd journey
gradle build

cd ..

cd libgdx-platformer
gradle build

cd ..

cd libgdx-test
gradle build

cd ..

cd pong-game 
gradle build

cd ..

cd smb-clone
gradle build

cd ..

cd snake-game
gradle build

echo instalacion de dependencias de proyectos Game-Development concluida

echo Proceso Completado


