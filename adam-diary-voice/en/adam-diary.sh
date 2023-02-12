#/!bin/bash


echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|       Welcome to Adam's diary,       |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Notes                          |"
echo "|                                      |"
echo "|    2. Timetable                      |"
echo "|                                      |"
echo "|    3. Calendar                       |"
echo "|                                      |"
echo "|    9. Exit                           |"
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

    1) ./adam-diary-voice/en/notes/notebook.sh;;

    2) ./adam-diary-voice/en/timetable/timetable.sh;;

    3) ./adam-diary/en/calendar/calendar.sh;;
       
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

    *)  ./adam-diary-voice/en/errors/errorAdam.sh;;

esac
