view_all_students() {
    echo "List of students:"
    if [ -s "students-list_1023.txt" ]; then
        cat students-list_1023.txt
    else
        echo "No students found."
    fi
}
