#/!bin/bash


echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|       Welcome to Adam's diary,       |"
echo "|           select an option:          |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Crear un archivo               |"
echo "|    2. Limpiar consola                |"
echo "|    3. EXIT                           |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"



read num


case $num in

    1) ./createNote.sh;;
    2) clear
        ./adam-diary.sh;;
    3) echo "By!";;


    *) ./error.sh;;

esac
