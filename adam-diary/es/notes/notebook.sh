#/!bin/bash

echo "----------------------------------------"
echo "|              TAREAS ADAM             |"
echo "----------------------------------------"
echo "|                                      |"
echo "|    1. Crear tarea                    |"
echo "|                                      |"
echo "|    2. Abrir fichero                  |"
echo "|                                      |"
echo "|    3. Ver tareas                     |"
echo "|                                      |"
echo "|    4. Eliminar tarea                 |"
echo "|                                      |"
echo "|    5. Salir                          |"
echo "|                                      |"
echo "----------------------------------------"
read -p "seleccione una opción: " num


case $num in

    1) ./adam-diary/es/notes/create.sh;;

    2) nano ./adam-diary/es/files/tasks.txt;;
    
    3) less ./adam-diary/es/files/tasks.txt;;

    4) ./adam-diary/es/notes/delete.sh;;

    5) echo "Hasta la próxima!";;

    *) ./errors/errorNotes.sh

esac