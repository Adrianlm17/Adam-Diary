#!/bin/bash

if [[ "$OSTYPE" == "msys" ]]
then
    text="Introduzca la tarea:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Introduzca la tarea: " tarea

    while true; do

    text="Introduzca la fecha de la tarea:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Introduzca la fecha de la tarea: " date

    if [[ $date =~ ^[0-9]+$ ]]; then
    break

    else
    text="Introduzca un valor numérico:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "Introduzca un valor numérico:"
    fi
    done

    while true; do

    text="Introduzca la hora de la tarea:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Introduzca la hora de la tarea: " time

    if [[ $time =~ ^[0-9]+$ ]]; then
    break

    else
    text="Introduzca un valor numérico:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "Introduzca un valor numérico:"
    fi
    done

    echo "tarea: $tarea" "fecha: $date" "hora: $time" >> ./adam-diary/en/files/tasks.txt
    echo " " >> ./adam-diary/en/files/tasks.txt

    powershell.exe -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('La tarea $tarea se ha añadido correctamente!')"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
    text="Introduzca la tarea:"
    echo "$text" | espeak -v es-la-sf
    read -p "Introduzca la tarea: " tarea

    while true; do

    text="Introduzca la fecha de la tarea:"
    echo "$text" | espeak -v es-la-sf
    read -p "Introduzca la fecha de la tarea: " date

    if [[ $date =~ ^[0-9]+$ ]]; then
    break

    else
    text="Introduzca un valor numérico:"
    echo "$text" | espeak -v es-la-sf
    echo "Introduzca un valor numérico:"
    fi
    done

    while true; do

    text="Introduzca la hora de la tarea:"
    echo "$text" | espeak -v es-la-sf
    read -p "Introduzca la hora de la tarea: " time

    if [[ $time =~ ^[0-9]+$ ]]; then
    break

    else
    text="Introduzca un valor numérico:"
    echo "$text" | espeak -v es-la-sf
    echo "Introduzca un valor numérico:"
    fi
    done

    echo "tarea: $tarea" "fecha: $date" "hora: $time" >> ./adam-diary/en/files/tasks.txt
    echo " " >> ./adam-diary/en/files/tasks.txt

    notify-send "La tarea $tarea se ha añadido correctamente!"

fi

./adam-diary-voice/en/notes/notebook.sh;
