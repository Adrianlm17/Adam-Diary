#!/bin/bash


if [[ "$OSTYPE" == "msys" ]]
then

    text="Please enter the note of the task you want to delete:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Please enter the note of the task you want to delete:" note
    
    line_number=$(grep -n "$note" ./files/tasks.txt | cut -d : -f 1)

    sed -i "$line_number,+3d" ./files/tasks.txt

    text="The task has been successfully removed!"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "The task has been successfully removed!"



elif [[ "$OSTYPE" == "linux-gnu" ]]
then

    text="Please enter the note of the task you want to delete:"
    echo "$text" | espeak -v es-la-sf
    read -p "Please enter the note of the task you want to delete:" note

    line_number=$(grep -n "$note" ./files/tasks.txt | cut -d : -f 1)

    sed -i "$line_number,+3d" ./files/tasks.txt

    text="The task has been successfully removed!"
    echo "$text" | espeak -v es-la-sf
    echo "The task has been successfully removed!"
    
fi
