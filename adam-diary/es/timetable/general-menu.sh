#/!bin/bash

read -p "¿Desea volver al menú principal? (S)Si/(N)No: " option

case $option in

    S) clear
       ./adam-diary/es/adam-diary.sh;;

    N) echo "Adios!";;

    *) ./adam-diary/es/errors/errorTimeGeneral.sh;;

esac