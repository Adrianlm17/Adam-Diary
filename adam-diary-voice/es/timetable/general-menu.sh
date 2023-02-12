#/!bin/bash


if [[ "$OSTYPE" == "msys" ]]
        then

            text="Desea volver al menú principal (Y)Si/(N)No:"
            powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
            read -p "Desea volver al menú principal (Y)Si/(N)No: " option
            
        elif [[ "$OSTYPE" == "linux-gnu" ]]
        then

            text="Desea volver al menú principal (Y)Si/(N)No:"
            echo "$text" | espeak -v es-la-sf
            read -p "Desea volver al menú principal (Y)Si/(N)No: " option
            
        fi

case $option in

    Y) clear
       ./adam-diary-voice/es/timetable/adam-diary.sh;;

    N) if [[ "$OSTYPE" == "msys" ]]
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

    *) ./adam-diary-voice/es/errors/errorTimeGeneral.sh;;

esac