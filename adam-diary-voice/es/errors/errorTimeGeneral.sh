#/!bin/bash

clear

if [[ "$OSTYPE" == "msys" ]]
then
    error="Por favor, seleccione la opción correcta!"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$error');"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
    error="Por favor, seleccione la opción correcta!"
    echo "$error" | espeak -v es-la-sf

fi

./adam-diary-voice/es/timetable/general-menu.sh;