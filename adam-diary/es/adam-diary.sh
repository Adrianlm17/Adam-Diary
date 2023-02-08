#/!bin/bash


echo "----------------------------------------"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Notas                          |"
echo "|                                      |"
echo "|    2. Horario                        |"
echo "|                                      |"
echo "|    3. ChatGPT                        |"
echo "|                                      |"
echo "|    5. Salir                          |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"
read -p "Seleccione una opción: " num


case $num in

    1) ./adam-diary/es/notes/notebook.sh;;

    2) ./timetable/timetable.sh;;

    3) ./adam-diary/es/gpt/chat.sh;;
    
    5)  echo "Adios!";;

    *)  ./errors/errorAdam.sh;;

esac
