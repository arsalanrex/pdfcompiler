#!/bin/bash
# Handles document conversion
# Call using conversion

conversion () {

echo "Working on $first..."
break_line

cd $first
echo " --Entered $first directory-- "

convert *$ext $output.pdf
echo " --Converted files in $first folder to pfd-- "

mv $output.pdf $loc/CompiledPdfOutput/

cd ..
echo " --Exited the directory-- "

}
