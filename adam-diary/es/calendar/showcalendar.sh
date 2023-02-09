#/!bin/bash


if [[ "$OSTYPE" == "msys" ]]
then

    start outlookcal:

elif [[ "$OSTYPE" == "linux-gnu" ]]
then

    cal

fi

./adam-diary/es/calendar/calendar.sh