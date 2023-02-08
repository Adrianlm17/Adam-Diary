#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|                Notes                 |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Create                         |"
echo "|                                      |"
echo "|    2. Show notes                     |"
echo "|                                      |"
echo "|    3. Delete note                    |"
echo "|                                      |"
echo "|    4. Exit                           |"
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

    1) ./adam-diary-voice/en/notes/create.sh;;

    2) nano ./adam-diary-voice/en/files/tasks.txt;;
    
    3) less ./adam-diary-voice/en/notes/delete.sh;;

    4) if [[ "$OSTYPE" == "msys" ]]
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


    *) ./adam-diary-voice/en/errors/errorNotes.sh

esac
