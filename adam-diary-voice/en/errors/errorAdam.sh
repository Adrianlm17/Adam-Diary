#/!bin/bash

clear


if [[ "$OSTYPE" == "msys" ]]
then
    error="Please, select a correct option!"
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$error');"

elif [[ "$OSTYPE" == "linux-gnu" ]]
then
    error="Please, select a correct option!"
    echo "$error" | espeak -v es-la-sf

fi

./adam-diary-voice/en/adam-diary.sh;