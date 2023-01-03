#!/bin/bash
# A simple Bash Script To Install Spring-Boot Dependencies, 
#Se requiere la instalacion de gradle, no funciona como quisiera. Intentare mas cosas sino se quedara asi

echo Iniciando Script

cd C:/Projects/Backend-Development/

echo Descargando dependencias de los Proyectos Backend-Development

cd arkham-knight-practica13
./gradlew clean build
cd ..

cd breaking-bad-app
./gradlew clean build
cd ..

cd covid-19-app
./gradlew clean build
cd ..

cd game-changer
./gradlew clean build
cd ..

cd game-changer-backend-v2
./gradlew clean build
cd ..

cd loan-api
./gradlew clean build
cd ..

cd spring-boot-ontology-test
./gradlew clean build
cd ..

cd secure-app
./gradlew clean build
cd ..

cd shipping-api
./gradlew clean build
cd ..

echo instalacion de dependencias de proyectos Backend-Development concluida

cd ..

cd Game-Development

echo Descargando dependencias de los Proyectos Game-Development

cd gdx-playground
./gradlew clean build
cd ..

cd journey
./gradlew clean build
cd ..

cd libgdx-platformer
./gradlew clean build
cd ..

cd libgdx-test
./gradlew clean build
cd ..

cd pong-game 
./gradlew clean build
cd ..

cd smb-clone
./gradlew clean build
cd ..

cd snake-game
./gradlew clean build
cd ..

echo instalacion de dependencias de proyectos Game-Development concluida