#/!bin/bash


echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|        Bienvenido a ADAM DIARY!      |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Notas                          |"
echo "|                                      |"
echo "|    2. Horario                        |"
echo "|                                      |"
echo "|    9. SALIR                          |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"
read -p "Seleccione una opción:" num


case $num in

    1) ./adam-diary/es/notes/notebook.sh;;

    2) ./adam-diary/es/timetable/timetable.sh;;
    
    9)  echo "Adios!";;

    *)  ./adam-diary/es/errors/errorAdam.sh;;

esac
