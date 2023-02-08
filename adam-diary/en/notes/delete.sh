#!/bin/bash


read -p "Please enter the note of the task you want to delete." note

line_number=$(grep -n "$note" ./files/tasks.txt | cut -d : -f 1)

sed -i "$line_number,+3d" ./files/tasks.txt

echo "The task has been successfully removed!"