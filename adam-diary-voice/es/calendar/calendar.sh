#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|             CALENDARIO               |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Ver calendario                 |"
echo "|                                      |"
echo "|    9. Salir                          |"
echo "|                                      |"
echo "----------------------------------------"

if [[ "$OSTYPE" == "msys" ]]
then

    text="Seleccione una de las opciones que aparecen en el terminal: "
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Seleccione una de las opciones que aparecen en el terminal:  " num

elif [[ "$OSTYPE" == "linux-gnu" ]]
then

    text="Seleccione una de las opciones que aparecen en el terminal: "
    echo "$text" | espeak -v es-la-sf
    read -p "Seleccione una de las opciones que aparecen en el terminal:  " num

fi


case $num in

    1) ./adam-diary/es/calendar/showcalendar.sh;;

    9) if [[ "$OSTYPE" == "msys" ]]
        then

            text="Adios!"
            powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
            echo "Adios!"
            
        elif [[ "$OSTYPE" == "linux-gnu" ]]
        then

            text="Adios!"
            echo "$text" | espeak -v es-la-sf
            
        fi
        echo "";;

    *) ./adam-diary/es/errors/errorCalendar.sh

esac