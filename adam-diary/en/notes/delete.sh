#!/bin/bash


read -p "Please enter the note of the task you want to delete: " note

line_number=$(grep -n "$note" ./adam-diary/en/files/tasks.txt | cut -d : -f 1)

sed -i "$line_number,+3d" ./adam-diary/en/files/tasks.txt

echo "The task has been successfully removed!"

./adam-diary/en/notes/notebook.sh;