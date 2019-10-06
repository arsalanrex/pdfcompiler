#!/bin/bash
# Handles all the errors
# Call using handle_error

spin() {
   local -a marks=( '/' '-' '\' '|' )
   while [[ 1 ]]; do
     printf '%s\r' "${marks[i++ % ${#marks[@]}]}"
     sleep 1
   done
 }

retry () {
read -n 1 -s -r -p "Press any key to continue..." 
./run.sh
}

handle_error_convchoice () {
echo "* Valid choice: [1] [2]"
retry
}


handle_error_extention () {
echo "* Valid choice: [1] [2] [3] [4]"
retry
}

handle_error_extention_compactibility () {
echo "* All the files do not share a common extention."
echo "* Please try again."
retry
}

handle_error_directory_absent () {
echo "* The given directory does not exist."
retry
}

handle_error_exit () {
echo "* Press Ctrl+Z to exit the script, or"
retry
}