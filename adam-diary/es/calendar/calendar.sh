#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|             CALENDARIO               |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Ver calendario                 |"
echo "|                                      |"
echo "|    9. Salir                          |"
echo "|                                      |"
echo "----------------------------------------"
read -p "Seleciona una opción valida: " num


case $num in

    1) ./adam-diary/es/calendar/showcalendar.sh;;

    9) echo "Adios!";;

    *) ./adam-diary/es/errors/errorCalendar.sh

esac