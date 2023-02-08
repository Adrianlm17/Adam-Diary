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
       if [ -f ./adam-diary/en/files/$saveTimetable ];
       then
            clear
            echo
            echo
            cat ./adam-diary/en/files/$saveTimetable
            echo 
            echo
            ./adam-diary/en/timetable/general-menu.sh
       else
            clear
            echo
            echo "The indicated file does not exist!"
            echo
            ./adam-diary/en/timetable/timetable.sh
       fi;;

    2) clear
       read -p "Enter the name of the timetable: " createFile
       nano ./adam-diary/en/files/$createFile
       ./adam-diary/en/timetable/general-menu.sh;;
    
    3) clear
       read -p "Enter the name of the file to be modified: " modifiedFile
       if [ -f ./adam-diary/en/files/$modifiedFile ];
       then
            nano ./adam-diary/en/files/$modifiedFile
            echo 
            echo
            ./adam-diary/en/timetable/general-menu.sh
       else
            clear
            echo
            echo "The indicated file does not exist!"
            echo
            ./adam-diary/en/timetable/timetable.sh
       fi;;

    4) clear
       read -p "Indicates the name of the file to be deleted: " rmFile
       if [ -f ./adam-diary/en/files/$rmFile ]; then
            clear;
            echo;
            echo;
            rm ./adam-diary/en/files/$rmFile;
            echo ;
            echo "The File "$rmFile" has been successfully deleted!";
            echo;
            ./adam-diary/en/timetable/general-menu.sh;
       else
            clear;
            echo;
            echo "The indicated file does not exist!";
            echo;
            ./adam-diary/en/timetable/timetable.sh;
       fi
       echo ;;


    *) ./adam-diary/en/errors/errorTimetable.sh;;

esac
