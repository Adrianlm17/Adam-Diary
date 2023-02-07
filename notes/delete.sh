#!/bin/bash


echo "Por favor, ingrese la nota de la tarea que quieres eliminar"
read nota

numero_linea=$(grep -n "$nota" tareas.txt | cut -d : -f 1)

sed -i "$numero_linea,+3d" tareas.txt 

echo "La tarea se ha eliminado con éxito!"