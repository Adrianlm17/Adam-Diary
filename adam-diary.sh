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
echo "|    1. Notas                          |"
echo "|                                      |"
echo "|    2. Timetable                      |"
echo "|                                      |"
echo "|    9. Exit                           |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"
echo select an option:


read num


case $num in

    1) ./notes/create.sh;;

    2) ./timetable/timetable.sh;;
    
    9) echo "Goodbye!";;

    *) ./errors/errorAdam.sh;;

esac
