#!/bin/bash
# Convert all the files in various folders to pdf
#try and catch block for Catche error when more than 100 pages are concatanated
#option for one folder to convert
bashfilename='run'
chmod +x $bashfilename.sh

loc=$(pwd)
next=1

mkdir -p CompiledPdfOutput
clear

chmod +x functions/make_executable.sh
. "./functions/make_executable.sh"
execute_functions

. "./functions/error_handling.sh"
. "./functions/choose_mode.sh"
. "./functions/choose_extention.sh"
. "./functions/mode_one.sh"
. "./functions/mode_two.sh"
. "./functions/break.sh"
. "./functions/conversion.sh"
. "./functions/output.sh"
. "./functions/file_checker.sh"
. "./functions/break_conversion.sh"


break_line

echo "+---------------Arsalan's pdf converter----------------+"

break_line

choose_mode

break_line

choose_extention

break_line

output_name

#=========================================

if [ $convchoice == '1' ] 
then

mode_one

else

mode_two

fi

echo " --Transferred the pdf to $loc/CompiledPdfOutput/-- "

break_line 

echo " -----Tasks executed successfully!!!----- "

break_line

handle_error_exit