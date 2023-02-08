#/!bin/bash


echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|        Bienvenido a ADAM DIARY!      |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Notas                          |"
echo "|                                      |"
echo "|    2. Horario                        |"
echo "|                                      |"
echo "|    9. SALIR                          |"
echo "|                                      |"
echo "|                                      |"
echo "----------------------------------------"

if [[ "$OSTYPE" == "msys" ]]
then

    text="Select one of the options given in the terminal: "
    powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
    read -p "Select one of the options given in the terminal:  " num

elif [[ "$OSTYPE" == "linux-gnu" ]]
then

    text="Select one of the options given in the terminal: "
    echo "$text" | espeak -v es-la-sf
    read -p "Select one of the options given in the terminal:  " num

fi


case $num in

    1) ./adam-diary-voice/es/notes/notebook.sh;;

    2) ./adam-diary-voice/es/timetable/timetable.sh;;
    
    9)  if [[ "$OSTYPE" == "msys" ]]
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

    *)  ./adam-diary-voice/es/errors/errorAdam.sh;;

esac
