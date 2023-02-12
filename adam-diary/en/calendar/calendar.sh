#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|               CALENDAR               |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. See calendar                   |"
echo "|                                      |"
echo "|    9. Exit                           |"
echo "|                                      |"
echo "----------------------------------------"
read -p "select an option: " num


case $num in

    1) ./adam-diary/en/calendar/showcalendar.sh;;

    9) echo "Goodbye!";;

    *) ./adam-diary/en/errors/errorCalendar.sh

esac