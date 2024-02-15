#!/bin/bash

create_student_record() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read student_id

    echo "$email,$age,$student_id" >> students-list_1023.txt
    echo "Student record created successfully."
}
