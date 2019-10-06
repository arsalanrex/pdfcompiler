#!/bin/bash
# Handles first mode of the script
# Call using mode_two

mode_two () {

break_line 

echo "* Ensure that the folders are named in a"
echo "* continuous order in the form(n,n+1,n+2...)"
echo ""
echo -n "Please enter the number of first folder where the files are located: "
read first
echo -n "Please enter the number of last folder where the files are located : "
read last

if [ ! -d "$first" ]
then
handle_error_directory_absent
fi

checker_first=$first

while [ $checker_first -le $last ]
do

echo "Checking the extentions in the $checker_first directory:"
file_checker
first=$(($first + $next))

done

while [ $first -le $last ]
do

conversion

first=$(($first + $next))
echo " --Updated to the next directory-- "

break_line

done

}







