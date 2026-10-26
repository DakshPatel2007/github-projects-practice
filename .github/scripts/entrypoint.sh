#!/bin/bash

echo "______________________"
echo "Executing todo.py"
echo "______________________"
python3 /app/.github/scripts/todo.py | tee /app/todo_output.txt

echo "______________________"
echo "Executing todo-test.py"
echo "______________________"
python3 /app/.github/scripts/todo-test.py | tee /app/test_output.txt

echo "______________________"
echo "Executing update_index.sh"
echo "______________________"
bash /app/.github/scripts/update_index.sh /app/todo_output.txt /app/test_output.txt

echo "______________________"
echo "Done!"
echo "______________________"