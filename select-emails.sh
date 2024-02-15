#!/bin/bash

# Extract emails of students and save them to student-emails.txt

# Check if the student records file exists
if [ ! -f "students-list_1023.txt" ]; then
    echo "Error: Student records file not found."
    exit 1
fi

# Use cut command to select the first field (email) from each line
cut -d ',' -f 1 students-list_1023.txt > student-emails.txt

echo "Emails of students extracted and saved to student-emails.txt."
