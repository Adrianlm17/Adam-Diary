#/!bin/bash

if [[ "$OSTYPE" == "msys" ]]
        then

            text="Do you want to return to the main menu (Y)Yes/(N)No:"
            powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
            read -p "Do you want to return to the main menu (Y)Yes/(N)No: " option
            
        elif [[ "$OSTYPE" == "linux-gnu" ]]
        then

            text="Do you want to return to the main menu (Y)Yes/(N)No:"
            echo "$text" | espeak -v es-la-sf
            read -p "Do you want to return to the main menu (Y)Yes/(N)No: " option
            
        fi

case $option in

    Y) clear
       ./adam-diary-voice/en/adam-diary.sh;;

    N) if [[ "$OSTYPE" == "msys" ]]
        then

            text="Goodbye!"
            powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
            echo "Goodbye!"
            
        elif [[ "$OSTYPE" == "linux-gnu" ]]
        then

            text="Goodbye!"
            echo "$text" | espeak -v es-la-sf
            
        fi
        echo "";;

    *) ./adam-diary-voice/en/errors/errorTimeGeneral.sh;;

esac