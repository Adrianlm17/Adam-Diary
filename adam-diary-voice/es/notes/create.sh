#!/bin/bash

if [[ "$OSTYPE" == "msys" ]]
then
    text="Introduzca la fecha de la tarea (YYYY-MM-DD):"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Introduzca la fecha de la tarea (YYYY-MM-DD):" date

    text="Introduzca la hora de la tarea (HH:MM:SS):"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Introduzca la hora de la tarea (HH:MM:SS):" time

    text="Introduzca la calificación de la tarea:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Introduzca la calificación de la tarea:" note

    echo "date: $date" >> ./adam-diary/es/files/tasks.txt
    echo "time: $time" >> ./adam-diary/es/files/tasks.txt
    echo "note: $note" >> ./adam-diary/es/files/tasks.txt
    echo "--------------------" >> ./files/tasks.txt

    text="La tarea se ha añadido correctamente!"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "La tarea se ha añadido correctamente!"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
    text="Introduzca la fecha de la tarea (YYYY-MM-DD):"
    echo "$text" | espeak -v es-la-sf
    read -p "Introduzca la fecha de la tarea (YYYY-MM-DD):" date

    text="Introduzca la hora de la tarea (HH:MM:SS):"
    echo "$text" | espeak -v es-la-sf
    read -p "Introduzca la hora de la tarea (HH:MM:SS):" time

    text="Introduzca la calificación de la tarea:"
    echo "$text" | espeak -v es-la-sf
    read -p "Introduzca la calificación de la tarea:" note

    echo "date: $date" >> ./adam-diary/es/files/tasks.txt
    echo "time: $time" >> ./adam-diary/es/files/tasks.txt
    echo "note: $note" >> ./adam-diary/es/files/tasks.txt
    echo "--------------------" >> ./adam-diary-voice/es/files/tasks.txt

    text="La tarea se ha añadido correctamente!"
    echo "$text" | espeak -v es-la-sf
    echo "La tarea se ha añadido correctamente!"

fi

./adam-diary-voice/es/notes/notebook.sh;
