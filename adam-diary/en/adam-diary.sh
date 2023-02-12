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
echo "|    3. Calendar                       |"
echo "|                                      |"
echo "|    9. Exit                           |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"
read -p "select an option:" num


case $num in

    1) ./adam-diary/en/notes/notebook.sh;;

    2) ./adam-diary/en/timetable/timetable.sh;;

    3) ./adam-diary/en/calendar/calendar.sh;;
    
    9)  echo "Goodbye!";;

    *)  ./adam-diary/en/errors/errorAdam.sh;;

esac
