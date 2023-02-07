#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|                Notes                 |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Create                         |"
echo "|                                      |"
echo "|    2. Show notes                     |"
echo "|                                      |"
echo "|    3. Delete note                    |"
echo "|                                      |"
echo "|    4. Exit                           |"
echo "|                                      |"
echo "----------------------------------------"
echo select an option:

read num


case $num in

    1) ./create.sh;;

    2) ./tareas.txt;;
    
    3) ./delete.sh;;

    4) echo "Goodbye!";;

    *) ./errors/errorGeneral.sh

esac