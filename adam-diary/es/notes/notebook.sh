#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|                NOTAS                 |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Crear nota                     |"
echo "|                                      |"
echo "|    2. Ver notas                      |"
echo "|                                      |"
echo "|    3. Eliminar nota                  |"
echo "|                                      |"
echo "|    4. SALIR                          |"
echo "|                                      |"
echo "----------------------------------------"
read -p "seleccione una opción: " num


case $num in

    1) ./adam-diary/es/notes/create.sh;;

    2) cat ./adam-diary/es/files/tasks.txt;;
    
    3) ./adam-diary/es/notes/delete.sh;;

    4) echo "Adios!";;

    *) ./adam-diary/es/errors/errorNotes.sh

esac