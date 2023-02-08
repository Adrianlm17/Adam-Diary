#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|               HORARIO                |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|            Indique una opción:       |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. Ver horarios                   |"
echo "|    2. Crear horario                  |"
echo "|    3. Cambiar el horario             |"
echo "|    4. Borrar horario                 |"
echo "|                                      |"
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

    1) clear
       if [[ "$OSTYPE" == "msys" ]]
          then

          text="Indique el nombre del fichero donde tiene el horario: "
          powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
          read -p "Indique el nombre del fichero donde tiene el horario: " saveTimetable

          elif [[ "$OSTYPE" == "linux-gnu" ]]
          then

          text="Indique el nombre del fichero donde tiene el horario: "
          echo "$text" | espeak -v es-la-sf
          read -p "Indique el nombre del fichero donde tiene el horario:  " saveTimetable

          fi

       if [ -f ./adam-diary-voice/es/files/$saveTimetable ];
       then
            clear
            echo
            echo
            cat ./adam-diary-voice/es/files/$saveTimetable
            echo 
            echo
            ./adam-diary-voice/es/timetable/general-menu.sh
       else
            clear
            echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="El fichero indicado no existe!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "El fichero indicado no existe!" saveTimetable

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="El fichero indicado no existe!"
               echo "$text" | espeak -v es-la-sf
               read -p "El fichero indicado no existe!" saveTimetable

               fi
            echo
            ./adam-diary-voice/es/timetable/timetable.sh
       fi;;

    2) clear
       if [[ "$OSTYPE" == "msys" ]]
               then

               text="Introduzca el nombre del horario: "
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "Introduzca el nombre del horario: " createFile

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="Introduzca el nombre del horario: "
               echo "$text" | espeak -v es-la-sf
               read -p "Introduzca el nombre del horario: " createFile

               fi
       nano ./adam-diary-voice/es/files/$createFile
       ./adam-diary-voice/es/timetable/general-menu.sh;;
    
    3) clear
       if [[ "$OSTYPE" == "msys" ]]
               then

               text="Introduzca el nombre del fichero que desea modificar: "
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "Introduzca el nombre del fichero que desea modificar: " modifiedFile

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="Introduzca el nombre del fichero que desea modificar: "
               echo "$text" | espeak -v es-la-sf
               read -p "Introduzca el nombre del fichero que desea modificar: " modifiedFile

               fi

       if [ -f ./adam-diary-voice/es/files/$modifiedFile ];
       then
            nano ./adam-diary-voice/es/files/$modifiedFile
            echo 
            echo
            ./adam-diary-voice/es/timetable/general-menu.sh
       else
            clear
            echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="El fichero indicado no existe!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "El fichero indicado no existe!" saveTimetable

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="El fichero indicado no existe!"
               echo "$text" | espeak -v es-la-sf
               read -p "El fichero indicado no existe!" saveTimetable

               fi
            echo
            ./adam-diary-voice/es/timetable/timetable.sh
       fi;;

    4) clear
       echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="Indica el nombre del fichero a borrar:"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "Indica el nombre del fichero a borrar:" rmFile

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="Indica el nombre del fichero a borrar:"
               echo "$text" | espeak -v es-la-sf
               read -p "Indica el nombre del fichero a borrar:" rmFile

               fi
            echo
            
       if [ -f ./adam-diary-voice/es/files/$rmFile ]; then
            clear;
            echo;
            echo;
            rm ./adam-diary-voice/es/files/$rmFile;
            echo ;
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="El archivo "$rmFile" se ha eliminado correctamente!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="El archivo "$rmFile" se ha eliminado correctamente!"
               echo "$text" | espeak -v es-la-sf

               fi
            echo;
            ./adam-diary-voice/es/timetable/general-menu.sh;
       else
            clear
            echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="El fichero indicado no existe!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "El fichero indicado no existe!" saveTimetable

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="El fichero indicado no existe!"
               echo "$text" | espeak -v es-la-sf
               read -p "El fichero indicado no existe!" saveTimetable

               fi
            echo
            ./adam-diary-voice/es/timetable/timetable.sh;
       fi
       echo ;;


    *) ./adam-diary-voice/es/errors/errorTimetable.sh;;

esac
