#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|               TIMETABLE              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|      Please indicate an option:      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. See timetable                  |"
echo "|    2. Create timetable               |"
echo "|    3. Change timetable               |"
echo "|    4. Delete timetable               |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"


read num


case $num in

    1) clear
       read -p "Indicate the name of the file where you have the timetable: " saveTimetable
       if [ -f ./files/$saveTimetable ];
       then
            clear
            echo
            echo
            cat ./files/$saveTimetable
            echo 
            echo
            ./timetable/general-menu.sh
       else
            clear
            echo
            echo "The indicated file does not exist!"
            echo
            ./timetable/timetable.sh
       fi;;

    2) clear
       read -p "Enter the name of the timetable: " createFile
       nano ./files/$createFile
       ./timetable/general-menu.sh;;
    
    3) clear
       read -p "Enter the name of the file to be modified: " modifiedFile
       if [ -f ./files/$modifiedFile ];
       then
            nano ./files/$modifiedFile
            echo 
            echo
            ./timetable/general-menu.sh
       else
            clear
            echo
            echo "The indicated file does not exist!"
            echo
            ./timetable/timetable.sh
       fi;;

    4) clear
       read -p "Indicates the name of the file to be deleted: " rmFile
       if [ -f ./files/$rmFile ]; then
            clear;
            echo;
            echo;
            rm ./files/$rmFile;
            echo ;
            echo "The File "$rmFile" has been successfully deleted!";
            echo;
            ./timetable/general-menu.sh;
       else
            clear;
            echo;
            echo "The indicated file does not exist!";
            echo;
            ./timetable/timetable.sh;
       fi
       echo ;;


    *) ./errors/errorTimetable.sh;;

esac
