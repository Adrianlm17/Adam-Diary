#/!bin/bash

read -p "¿Desea volver al menú principal? (S)Si/(N)No: " option

case $option in

    S) clear
       ./adam-diary.sh;;

    N) echo "Adios!";;

    *) ./errors/errorTimeGeneral.sh;;

esac