#!/bin/bash

read -p "Please enter the date of the task (YYYY-MM-DD):" date

read -p "Please enter the time of the task (HH:MM:SS):" time

read -p "Please enter the grade for the assignment:" note

echo "date: $date" >> tasks.txt
echo "time: $time" >> tasks.txt
echo "note: $note" >> tasks.txt
echo "--------------------" >> ./files/tasks.txt

echo "The task has been successfully added!"