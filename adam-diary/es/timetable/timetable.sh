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
       if [ -f ./adam-diary/es/files/$saveTimetable ];
       then
            clear
            echo
            echo
            cat ./adam-diary/es/files/$saveTimetable
            echo 
            echo
            ./adam-diary/es/timetable/general-menu.sh
       else
            clear
            echo
            echo "El fichero indicado no existe!"
            echo
            ./adam-diary/es/timetable/timetable.sh
       fi;;

    2) clear
       read -p "Introduzca el nombre del horario: " createFile
       nano ./adam-diary/es/files/$createFile
       ./adam-diary/es/timetable/general-menu.sh;;
    
    3) clear
       read -p "Introduzca el nombre del fichero que desea modificar: " modifiedFile
       if [ -f ./adam-diary/es/files/$modifiedFile ];
       then
            nano ./adam-diary/es/files/$modifiedFile
            echo 
            echo
            ./adam-diary/es/timetable/general-menu.sh
       else
            clear
            echo
            echo "El fichero indicado no existe!"
            echo
            ./adam-diary/es/timetable/timetable.sh
       fi;;

    4) clear
       read -p "Indica el nombre del fichero a borrar: " rmFile
       if [ -f ./adam-diary/es/files/$rmFile ]; then
            clear;
            echo;
            echo;
            rm ./adam-diary/es/files/$rmFile;
            echo ;
            echo "El archivo "$rmFile" se ha eliminado correctamente!";
            echo;
            ./adam-diary/es/timetable/general-menu.sh;
       else
            clear;
            echo;
            echo "El fichero indicado no existe!";
            echo;
            ./adam-diary/es/timetable/timetable.sh;
       fi
       echo ;;


    *) ./adam-diary/es/errors/errorTimetable.sh;;

esac
