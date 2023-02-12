#!/bin/bash


read -p "Please enter the note of the task you want to delete: " note

sed -i "/$note/d" ./adam-diary/en/files/tasks.txt

echo "The task has been successfully removed!"

./adam-diary/en/notes/notebook.sh;