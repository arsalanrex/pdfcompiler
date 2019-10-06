#!/bin/bash
# Handles checking of file after picking extention
# Call using file_checker

file_checker () {

break_line

cd $first

total_files=$(ls -1q * | wc -l)
echo "Total file/s in the directory: $total_files"

ext_files=$(ls -1q *."$ext" | wc -l) || echo "No .$ext file exists in the directory."
echo "Total .$ext file/s in the directory: $ext_files"

cd ..

if [ $total_files != $ext_files ] 
then
handle_error_extention_compactibility
else
:
fi

}

