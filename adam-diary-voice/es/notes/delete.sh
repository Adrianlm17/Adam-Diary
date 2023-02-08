#!/bin/bash


if [[ "$OSTYPE" == "msys" ]]
then

    text="Introduzca la nota de la tarea que desea eliminar:"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Introduzca la nota de la tarea que desea eliminar:" note
    
    sed -i "/$note/d" ./adam-diary-voice/es/files/tasks.txt

    text="La tarea se ha eliminado correctamente."
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    echo "La tarea se ha eliminado correctamente."



elif [[ "$OSTYPE" == "linux-gnu" ]]
then

    text="Introduzca la nota de la tarea que desea eliminar:"
    echo "$text" | espeak -v es-la-sf
    read -p "Introduzca la nota de la tarea que desea eliminar:" note

    sed -i "/$note/d" ./adam-diary-voice/es/files/tasks.txt

    text="La tarea se ha eliminado correctamente."
    echo "$text" | espeak -v es-la-sf
    echo "La tarea se ha eliminado correctamente."
    
fi

./adam-diary-voice/es/notes/notebook.sh;
