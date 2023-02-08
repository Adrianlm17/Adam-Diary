#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|               HORARIO                |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|            Indique una opción:       |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Ver horarios                   |"
echo "|    2. Crear horario                  |"
echo "|    3. Cambiar el horario             |"
echo "|    4. Borrar horario                 |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"


read -p "Seleccione una opción: " num


case $num in

    1) clear
       read -p "Indique el nombre del fichero donde tiene el horario: " saveTimetable
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
            echo "El fichero indicado no existe!"
            echo
            ./timetable/timetable.sh
       fi;;

    2) clear
       read -p "Introduzca el nombre del horario: " createFile
       nano ./files/$createFile
       ./timetable/general-menu.sh;;
    
    3) clear
       read -p "Introduzca el nombre del fichero que desea modificar: " modifiedFile
       if [ -f ./files/$modifiedFile ];
       then
            nano ./files/$modifiedFile
            echo 
            echo
            ./timetable/general-menu.sh
       else
            clear
            echo
            echo "El fichero indicado no existe!"
            echo
            ./timetable/timetable.sh
       fi;;

    4) clear
       read -p "Indica el nombre del fichero a borrar: " rmFile
       if [ -f ./files/$rmFile ]; then
            clear;
            echo;
            echo;
            rm ./files/$rmFile;
            echo ;
            echo "El archivo "$rmFile" se ha eliminado correctamente!";
            echo;
            ./timetable/general-menu.sh;
       else
            clear;
            echo;
            echo "El fichero indicado no existe!";
            echo;
            ./timetable/timetable.sh;
       fi
       echo ;;


    *) ./errors/errorTimetable.sh;;

esac
