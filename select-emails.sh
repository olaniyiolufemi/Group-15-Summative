#!/bin/bash
view_all_students() {
    while IFS=, read -r email age id; do
        echo "Email: $email, Age: $age, ID: $id"
    done < students-list_1023.txt
}
