#/!bin/bash

echo "----------------------------------------"
echo "|                                      |"
echo "|                                      |"
echo "|               TIMETABLE              |"
echo "|                                      |"
echo "----------------------------------------"
echo "|                                      |"
echo "|      Please indicate an option:      |"
echo "|                                      |"
echo "|                                      |"
echo "|    1. See timetable                  |"
echo "|    2. Create timetable               |"
echo "|    3. Change timetable               |"
echo "|    4. Delete timetable               |"
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

    1) clear
       if [[ "$OSTYPE" == "msys" ]]
          then

          text="Indicate the name of the file where you have the timetable: "
          powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
          read -p "Indicate the name of the file where you have the timetable: " saveTimetable

          elif [[ "$OSTYPE" == "linux-gnu" ]]
          then

          text="Indicate the name of the file where you have the timetable: "
          echo "$text" | espeak -v es-la-sf
          read -p "Indicate the name of the file where you have the timetable:  " saveTimetable

          fi

       if [ -f ./adam-diary-voice/en/files/$saveTimetable ];
       then
            clear
            echo
            echo
            cat ./adam-diary-voice/en/files/$saveTimetable
            echo 
            echo
            ./adam-diary-voice/en/timetable/general-menu.sh
       else
            clear
            echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="The indicated file does not exist!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "The indicated file does not exist!" saveTimetable

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="The indicated file does not exist!"
               echo "$text" | espeak -v es-la-sf
               read -p "The indicated file does not exist!" saveTimetable

               fi
            echo
            ./adam-diary-voice/en/timetable/timetable.sh
       fi;;

    2) clear
       if [[ "$OSTYPE" == "msys" ]]
               then

               text="Enter the name of the timetable: "
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "Enter the name of the timetable: " createFile

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="Enter the name of the timetable: "
               echo "$text" | espeak -v es-la-sf
               read -p "Enter the name of the timetable: " createFile

               fi
       nano ./adam-diary-voice/en/files/$createFile
       ./adam-diary-voice/en/timetable/general-menu.sh;;
    
    3) clear
       if [[ "$OSTYPE" == "msys" ]]
               then

               text="Enter the name of the file to be modified: "
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "Enter the name of the file to be modified: " modifiedFile

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="Enter the name of the file to be modified: "
               echo "$text" | espeak -v es-la-sf
               read -p "Enter the name of the file to be modified: " modifiedFile

               fi

       if [ -f ./adam-diary-voice/en/files/$modifiedFile ];
       then
            nano ./adam-diary-voice/en/files/$modifiedFile
            echo 
            echo
            ./adam-diary-voice/en/timetable/general-menu.sh
       else
            clear
            echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="The indicated file does not exist!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "The indicated file does not exist!" saveTimetable

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="The indicated file does not exist!"
               echo "$text" | espeak -v es-la-sf
               read -p "The indicated file does not exist!" saveTimetable

               fi
            echo
            ./adam-diary-voice/en/timetable/timetable.sh
       fi;;

    4) clear
       echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="Indicates the name of the file to be deleted:"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "Indicates the name of the file to be deleted:" rmFile

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="Indicates the name of the file to be deleted:"
               echo "$text" | espeak -v es-la-sf
               read -p "Indicates the name of the file to be deleted:" rmFile

               fi
            echo
            
       if [ -f ./adam-diary-voice/en/files/$rmFile ]; then
            clear;
            echo;
            echo;
            rm ./adam-diary-voice/en/files/$rmFile;
            echo ;
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="The File "$rmFile" has been successfully deleted!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="The File "$rmFile" has been successfully deleted!"
               echo "$text" | espeak -v es-la-sf

               fi
            echo;
            ./adam-diary-voice/en/timetable/general-menu.sh;
       else
            clear
            echo
            if [[ "$OSTYPE" == "msys" ]]
               then

               text="The indicated file does not exist!"
               powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('$text');"
               read -p "The indicated file does not exist!" saveTimetable

               elif [[ "$OSTYPE" == "linux-gnu" ]]
               then

               text="The indicated file does not exist!"
               echo "$text" | espeak -v es-la-sf
               read -p "The indicated file does not exist!" saveTimetable

               fi
            echo
            ./adam-diary-voice/en/timetable/timetable.sh;
       fi
       echo ;;


    *) ./adam-diary-voice/en/errors/errorTimetable.sh;;

esac
