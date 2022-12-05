#!/bin/bash
# A simple Bash Script Menu

echo Indique la tarea que desea hacer:

echo Para generar estructura de proyectos pulse 1:
echo Para generar estructura de proyecto spring-boot pulse 2:
echo Para generar estructura de proyecto libgdx pulse 3:

read userOption

bash libgdx-projects-structure.sh

#de esta forma guardo el valor de un comando en una variable. En este caso en date almaceno la fecha exacta y en pwd la ubicacion
date=$(date)
where=$(pwd)

echo Fecha: $date estas en: $where


