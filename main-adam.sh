#/!bin/bash

echo "Bienvenido a ADAM DIARY, antes de iniciarme, vamos a configurar nuestra agenda!"
echo "Welcome to ADAM DIARY, before I get started, let's set up our agenda!"
echo
echo
echo
echo
echo
echo
echo "Quieres activar la agenda con voz (Y)Si / (N)No:"
echo "You want to activate the phonebook with voice (Y)Yes / (N)No:"
read voice

echo "En que lenguaje lo quieres configurar (S)Español / (E)Ingles:"
echo "In which language you want to configure it (S)Spanish / (E)English:"
read lenguage



if [[ "$voice" == "Y" ]]; then

    if [[ "$lenguage" == "S" ]]; then

        ./adam-diary-voice/es/adam-diary.sh

    else
        ./adam-diary-voice/en/adam-diary.sh
    fi

elif [[ "$voice" == "N" ]]; then

    if [[ "$lenguage" == "S" ]]; then

        ./adam-diary/es/adam-diary.sh

    else
        ./adam-diary/en/adam-diary.sh
    fi

else
    clear
    echo "Alguno de los parametros no fue correcto!"
    echo "Some of the parameters were not correct!"
    echo
    echo
    ./main-adam.sh
fi
