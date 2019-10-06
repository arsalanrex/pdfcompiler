#!/bin/bash
# Handles first mode of the script
# Call using mode_two

mode_two () {

mode=2

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
temp_first=$first

while [ $checker_first -le $last ]
do

break_line
echo "Checking the extentions in the $checker_first directory:"
file_checker
checker_first=$(($checker_first + 1))
first=$(($first + 1))
done

first=$temp_first

while [ $first -le $last ]
do

break_line

cd $first
files_here=$(ls -1q * | wc -l)
cd ..

if [ $files_here -gt 50 ]
then

break_conversion
else

conversion
fi

first=$(($first + 1))

done

break_line






# if [ $ext_files -gt 50 ]

# then

# while [ $first -le $last ]
# do

# break_conversion

# first=$(($first + $next))
# echo " --Updated to the next directory-- "

# break_line

# done

# else

# while [ $first -le $last ]
# do

# conversion

# first=$(($first + $next))
# echo " --Updated to the next directory-- "

# break_line

# done

# fi



}







