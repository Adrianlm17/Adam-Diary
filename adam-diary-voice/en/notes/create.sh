#!/bin/bash

if [[ "$OSTYPE" == "msys" ]]
then
    text="Enter the task:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Enter the task: " tarea

    while true; do

    text="Enter the date of the task:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Enter the date of the task: " date

    if [[ $date =~ ^[0-9]+$ ]]; then
    break

    else
    text="Enter a numerical value:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "Enter a numerical value:"
    fi
    done

    while true; do

    text="Enter the time of the task:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Enter the time of the task: " time

    if [[ $time =~ ^[0-9]+$ ]]; then
    break

    else
    text="Enter a numerical value:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "Enter a numerical value:"
    fi
    done

    echo "task: $tarea" "date: $date" "time: $time" >> ./adam-diary/en/files/tasks.txt
    echo " " >> ./adam-diary/en/files/tasks.txt

    powershell.exe -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('The task $tarea has been successfully added!')"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
    text="Enter the task:"
    echo "$text" | espeak -v es-la-sf
    read -p "Enter the task: " tarea

    while true; do

    text="Enter the date of the task:"
    echo "$text" | espeak -v es-la-sf
    read -p "Enter the date of the task: " date

    if [[ $date =~ ^[0-9]+$ ]]; then
    break

    else
    text="Enter a numerical value:"
    echo "$text" | espeak -v es-la-sf
    echo "Enter a numerical value:"
    fi
    done

    while true; do

    text="Enter the time of the task:"
    echo "$text" | espeak -v es-la-sf
    read -p "Enter the time of the task: " time

    if [[ $time =~ ^[0-9]+$ ]]; then
    break

    else
    text="Enter a numerical value:"
    echo "$text" | espeak -v es-la-sf
    echo "Enter a numerical value:"
    fi
    done

    echo "task: $tarea" "date: $date" "time: $time" >> ./adam-diary/en/files/tasks.txt
    echo " " >> ./adam-diary/en/files/tasks.txt

    notify-send "The task $tarea has been successfully added!"

fi

./adam-diary-voice/en/notes/notebook.sh;
