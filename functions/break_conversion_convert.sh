#!/bin/bash
# Handles document conversion after breaking them in .temp
# Call using break_conversion_convert

break_conversion_convert () {
    cd CompiledPdfOutput/.temp/
    nof=$(find * -maxdepth 1 -type d | wc -l)
    version=1

while [ $nof != 0 ]
do

cd $first-$version/

convert *$ext $first-$version.pdf
mv $first-$version.pdf ../
cd ..

nof=$(($nof - 1))
version=$(($version + 1))

done

if [ $mode == 1 ]
then
pdftk *.pdf cat output $output.pdf
echo " --Converted files in $first folder to pfd by mode one-- "
mv $output.pdf ../

else
pdftk *.pdf cat output $output-$first.pdf
echo " --Converted files in $first folder to pfd by mode two-- "
mv $output-$first.pdf ../

fi

}