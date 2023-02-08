#!/bin/bash

read -p "Introduzca la fecha de la tarea (YYYY-MM-DD):" date

read -p "Introduzca la hora de la tarea (HH:MM:SS):" time

read -p "Introduzca la calificación de la tarea:" note

echo "date: $date" >> ./adam-diary/es/files/tasks.txt
echo "time: $time" >> ./adam-diary/es/files/tasks.txt
echo "note: $note" >> ./adam-diary/es/files/tasks.txt
echo "--------------------" >> ./adam-diary/es/files/tasks.txt

echo "La tarea se ha añadido correctamente!"

./adam-diary/es/notes/notebook.sh;