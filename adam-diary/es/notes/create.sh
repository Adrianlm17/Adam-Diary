#!/bin/bash
read -p "Introduzca la tarea: " tarea

while true; do

    read -p "Introduzca la fecha de la tarea: " date

    if [[ $date =~ ^[0-9]+$ ]]; then
    break

    else
    echo "Introduce un valor numérico."
  fi
done

while true; do

    read -p "Introduzca la hora de la tarea: " time

    if [[ $time =~ ^[0-9]+$ ]]; then
    break

    else
    echo "Introduce un valor numérico."
  fi
done

echo "tarea: $tarea" "fecha: $date" "hora: $time" >> ./adam-diary/es/files/tasks.txt
echo " " >> ./adam-diary/es/files/tasks.txt


if [[ "$OSTYPE" == "msys" ]]
then
  powershell.exe -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('$tarea')"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
  notify-send "La tarea $tarea se ha añadido correctamente!"

fi

./adam-diary/es/notes/notebook.sh;
