#!/bin/bash

#Este script le permite añadir notas de tareas para recordar con fecha y hora

#Solicitamos al usuario la fecha
echo "Por favor, ingrese la fecha de la tarea (YYYY-MM-DD):"
read fecha

#Solicitamos al usuario la hora
echo "Por favor, ingrese la hora de la tarea (HH:MM:SS):"
read hora

#Solicitamos al usuario la nota
echo "Por favor, ingrese la nota de la tarea:"
read nota

#Guardamos la nota en un archivo
echo "Fecha: $fecha" >> tareas.txt
echo "Hora: $hora" >> tareas.txt
echo "Nota: $nota" >> tareas.txt
echo "--------------------" >> tareas.txt

#Mensaje de exito
echo "La tarea se ha añadido con éxito!"