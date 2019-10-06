#!/bin/bash
# Handles document conversion by braking and placing them in temp folder
# Call using break_conversion

break_conversion () {

mkdir -p ../CompiledPdfOutput/.temp

echo "Working on $first..."
break_line

cd $first
echo " --Entered $first directory-- "

flies_exist=$(ls -1q * | wc -l)
version=1


while [ $flies_exist -gt 50 ]
do

mkdir -p ../CompiledPdfOutput/.temp/$first-$version

set --
for f in .* *; do
  [ "$#" -lt 50 ] || break
  [ -f "$f" ] || continue
  [ -L "$f" ] && continue
  set -- "$@" "$f"
done

mv -- "$@" ../CompiledPdfOutput/.temp/$first-$version/
flies_exist=$(ls -1q * | wc -l)
version=$(($version + 1))

done

mkdir -p ../CompiledPdfOutput/.temp/$first-$version
set --
for f in .* *; do
  [ "$#" -lt 50 ] || break
  [ -f "$f" ] || continue
  [ -L "$f" ] && continue#!/bin/bash
# Handles document conversion by braking and placing them in temp folder
# Call using break_conversion
  set -- "$@" "$f"
done
mv -- "$@" ../CompiledPdfOutput/.temp/$first-$version/

cd ..

find CompiledPdfOutput/.temp/*/* -exec cp {} $first \;

break_conversion_convert

cd ..

rm -rf .temp

cd ..
echo " --Exited the directory-- "


}

