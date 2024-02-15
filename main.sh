#!/bin/bash

# Function to create a student record
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

# Function to view all students saved in the file
view_all_students() {
    echo "List of students:"
    cat students-list_1023.txt
}

# Function to delete the student by ID
delete_student_by_id() {
    echo "Enter student ID to delete:"
    read delete_id

    # Create a temporary file to hold the updated records
    grep -v "^$delete_id," students-list_1023.txt > temp.txt
    mv temp.txt students-list_1023.txt

    echo "Student with ID $delete_id deleted successfully."
}

# Function to update the student record by ID
update_student_by_id() {
    echo "Enter student ID to update:"
    read update_id
    echo "Enter new email:"
    read new_email
    echo "Enter new age:"
    read new_age

    # Use sed to update the record
    sed -i "s/^$update_id,.*/$new_email,$new_age,$update_id/" students-list_1023.txt

    echo "Student with ID $update_id updated successfully."
}

# Function to exit the application
exit_application() {
    echo "Exiting the application."
    exit 0
}

# Main menu loop
while true; do
    echo "Main Menu:"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student by ID"
    echo "4. Update student record by ID"
    echo "5. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1) create_student_record;;
        2) view_all_students;;
        3) delete_student_by_id;;
        4) update_student_by_id;;
        5) exit_application;;
        *) echo "Invalid choice. Please choose a valid option.";;
    esac
done

