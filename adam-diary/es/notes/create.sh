#!/bin/bash

read -p "Introduzca la fecha de la tarea (YYYY-MM-DD):" date

read -p "Introduzca la hora de la tarea (HH:MM:SS):" time

read -p "Introduzca la calificación de la tarea:" note

echo "date: $date" >> tasks.txt
echo "time: $time" >> tasks.txt
echo "note: $note" >> tasks.txt
echo "--------------------" >> ./files/tasks.txt

echo "La tarea se ha añadido correctamente!"