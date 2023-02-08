#/!bin/bash


echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|       Welcome to Adam's diary,       |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Notes                          |"
echo "|                                      |"
echo "|    2. Timetable                      |"
echo "|                                      |"
echo "|    9. Exit                           |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"
read -p "select an option:" num


case $num in

    1) ./createNote.sh;;

    2) ./timetable/timetable.sh;;
    
    9)  echo "Goodbye!";;

    *)  ./errors/errorAdam.sh;;

esac
