#!/bin/bash


read -p "Introduzca la tarea que desea eliminar: " note
sed -i "/$note/d" ./adam-diary/es/files/tasks.txt


echo "La tarea se ha eliminado correctamente!"