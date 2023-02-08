#!/bin/bash


read -p "Introduzca la nota de la tarea que desea eliminar" note

line_number=$(grep -n "$note" ./files/tasks.txt | cut -d : -f 1)

sed -i "$line_number,+3d" ./files/tasks.txt

echo "La tarea se ha eliminado correctamente!"