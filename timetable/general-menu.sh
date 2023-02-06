#/!bin/bash

read -p "Do you want to return to the main menu (Y)Yes/(N)No: " option

case $option in

    Y) clear
       ./adam-diary.sh;;

    N) echo "Goodbye!";;

    *) ./errors/errorGeneral.sh;;

esac