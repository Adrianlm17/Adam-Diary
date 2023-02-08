#!/bin/bash


read -p "Introduzca la nota de la tarea que desea eliminar: " note

line_number=$(grep -n "$note" ./adam-diary/es/files/tasks.txt | cut -d : -f 1)

sed -i "$line_number,+3d" ./adam-diary/es/files/tasks.txt

echo "La tarea se ha eliminado correctamente!"

./adam-diary/es/notes/notebook.sh;