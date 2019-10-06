#!/bin/bash
# Choose the modes of conversion
# Call using choose_mode

choose_mode () {

echo "Choose the mode of Conversion:"
echo "1) Compile the files from one folder into a single pdf"
echo "2) Compile the files from multiple folders into a single pdf"
echo -n "Choice(1/2) : "
read convchoice

if [ $convchoice == '1' ] || [ $convchoice == '2' ] 
then
:
else
handle_error_convchoice
fi
}









