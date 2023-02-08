#!/bin/bash

if [[ "$OSTYPE" == "msys" ]]
then
    text="Please enter the date of the task (YYYY-MM-DD):"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Please enter the date of the task (YYYY-MM-DD):" date

    text="Please enter the time of the task (HH:MM:SS):"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Please enter the time of the task (HH:MM:SS):" time

    text="Please enter the grade for the assignment:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Please enter the grade for the assignment:" note

    echo "date: $date" >> tasks.txt
    echo "time: $time" >> tasks.txt
    echo "note: $note" >> tasks.txt
    echo "--------------------" >> ./files/tasks.txt

    text="The task has been successfully added!"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "The task has been successfully added!"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
    text="Please enter the date of the task (YYYY-MM-DD):"
    echo "$text" | espeak -v es-la-sf
    read -p "Please enter the date of the task (YYYY-MM-DD):" date

    text="Please enter the time of the task (HH:MM:SS):"
    echo "$text" | espeak -v es-la-sf
    read -p "Please enter the time of the task (HH:MM:SS):" time

    text="Please enter the grade for the assignment:"
    echo "$text" | espeak -v es-la-sf
    read -p "Please enter the grade for the assignment:" note

    echo "date: $date" >> tasks.txt
    echo "time: $time" >> tasks.txt
    echo "note: $note" >> tasks.txt
    echo "--------------------" >> ./files/tasks.txt

    text="The task has been successfully added!"
    echo "$text" | espeak -v es-la-sf
    echo "The task has been successfully added!"

fi
