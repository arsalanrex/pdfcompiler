#!/bin/bash
# Handles first mode of the script
# Call using mode_one

mode_one () {

mode=1

break_line

echo -n "Please enter the name of the folder where the files are located: "
read first

if [ ! -d "$first" ]
then
handle_error_directory_absent
fi

file_checker

break_line


if [ $ext_files -gt 50 ]
then
break_conversion
else
conversion
fi

break_line


}







