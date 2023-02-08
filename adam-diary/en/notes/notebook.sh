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
read -p "select an option: " num


case $num in

    1) ./create.sh;;

    2) ./files/tasks.txt;;
    
    3) ./delete.sh;;

    4) echo "Goodbye!";;

    *) ./errors/errorNotes.sh

esac