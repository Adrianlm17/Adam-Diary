#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|              ADAM DIARY              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|                NOTAS                 |"
echo "|                                      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Crear nota                     |"
echo "|                                      |"
echo "|    2. Ver notas                      |"
echo "|                                      |"
echo "|    3. Eliminar nota                  |"
echo "|                                      |"
echo "|    4. SALIR                          |"
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

    1) ./adam-diary-voice/es/notes/create.sh;;

    2) cat ./adam-diary-voice/es/files/tasks.txt;;
    
    3) ./adam-diary-voice/es/notes/delete.sh;;

    4) if [[ "$OSTYPE" == "msys" ]]
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


    *) ./adam-diary-voice/es/errors/errorNotes.sh

esac
