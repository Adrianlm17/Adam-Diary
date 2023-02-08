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

    1) ./adam-diary/en/notes/create.sh;;

    2) nano ./adam-diary/en/files/tasks.txt;;
    
    3) less ./adam-diary/en/notes/delete.sh;;

    4) echo "Goodbye!";;

    *) ./adam-diary/en/errors/errorNotes.sh

esac