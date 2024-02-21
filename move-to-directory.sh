#!/bin/bash

negpod_id="15"

# Set directory name
dir_name="negpod_$negpod_id-q1"

# Create the directory if it doesn't exist
mkdir -p "$dir_name"

# Move the files to the directory
mv main.sh select-emails.sh students-list_1023.txt student-emails.txt "$dir_name"

echo "Files moved to $dir_name"