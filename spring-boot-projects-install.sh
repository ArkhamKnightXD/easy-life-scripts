#!/bin/bash
# A simple Bash Script To Install Spring-Boot Dependencies, Se requiere la instalacion de gradle

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

echo Proceso Completado


