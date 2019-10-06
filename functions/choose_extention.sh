#!/bin/bash
# Choose the extentions of files to be converted
# Call using choose_extention

choose_extention () {

echo "Choose is the extention of your file/s:"
echo "1) .jpg       2) .jpeg"
echo "3) .png       4) .txt"

echo -n "Choice(1/2/3/4/5) : "
read extention

if [ $extention == '1' ]
then 
ext='jpg'
elif [ $extention == '2' ]
then 
ext='jpeg'
elif [ $extention == '3' ]
then 
ext='png'
elif [ $extention == '4' ]
then 
ext='txt'
else 
handle_error_extention
fi

}









