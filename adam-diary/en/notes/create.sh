#!/bin/bash

read -p "Please enter the date of the task (YYYY-MM-DD):" date

read -p "Please enter the time of the task (HH:MM:SS):" time

read -p "Please enter the grade for the assignment:" note

echo "date: $date" >> ./adam-diary/es/files/tasks.txt
echo "time: $time" >> ./adam-diary/es/files/tasks.txt
echo "note: $note" >> ./adam-diary/es/files/tasks.txt
echo "--------------------" >> ./adam-diary/en/files/tasks.txt

echo "The task has been successfully added!"

./adam-diary/en/notes/notebook.sh;