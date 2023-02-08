#!/bin/bash

read -p "Enter the task: " tarea

while true; do

    read -p "Enter the date of the task: " date

    if [[ $date =~ ^[0-9]+$ ]]; then
    break

    else
    echo "Enter a numerical value:"
  fi
done

while true; do

    read -p "Enter the time of the task: " time

    if [[ $time =~ ^[0-9]+$ ]]; then
    break

    else
    echo "Enter a numerical value:"
  fi
done

echo "task: $tarea" "date: $date" "time: $time" >> ./adam-diary/en/files/tasks.txt
echo " " >> ./adam-diary/en/files/tasks.txt


if [[ "$OSTYPE" == "msys" ]]
then
  powershell.exe -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('The task $tarea has been successfully added!')"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
  notify-send "The task $tarea has been successfully added!"

fi

./adam-diary/en/notes/notebook.sh;