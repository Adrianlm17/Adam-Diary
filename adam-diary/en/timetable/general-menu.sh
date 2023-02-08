#/!bin/bash

read -p "Do you want to return to the main menu (Y)Yes/(N)No: " option

case $option in

    Y) clear
       ./adam-diary/en/adam-diary.sh;;

    N) echo "Goodbye!";;

    *) ./adam-diary/en/errors/errorTimeGeneral.sh;;

esac