#!/bin/bash
# A simple Bash Script Menu

while
    printf "\nIndique la tarea que desea hacer: "

    printf "\nPara generar estructura de proyectos pulse 1: "
    printf "\nPara generar estructura de proyecto spring-boot pulse 2: "
    printf "\nPara generar estructura de proyecto libgdx pulse 3: "
    printf "\nPara descargar dependencias de proyectos gradle pulse 4: "
    printf "\nPara descargar dependencias de proyectos react pulse 5: "

    read userOption

    case $userOption in

  1)
    bash projects-structure.sh;;

  2)
    bash spring-boot-projects-structure.sh;;

  3)
    bash libgdx-projects-structure.sh;;

  4)
    bash gradle-projects-install.sh;;

  5)
    bash react-projects-install.sh;;

  *)
    echo -n "unknown";;

esac

do true; done



