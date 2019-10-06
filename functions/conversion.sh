#!/bin/bash
# Handles document conversion
# Call using conversion

conversion () {

echo "Working on $first..."
break_line

cd $first
echo " --Entered $first directory-- "



if [ $mode == 1 ]
then
convert *$ext $output.pdf
echo " --Converted files in $first folder to pfd by mode one-- "
mv $output.pdf $loc/CompiledPdfOutput/

else
convert *$ext $output-$first.pdf
echo " --Converted files in $first folder to pfd by mode two-- "
mv $output-$first.pdf $loc/CompiledPdfOutput/

fi







cd ..
echo " --Exited the directory-- "

}
