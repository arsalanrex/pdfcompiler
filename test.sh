
first=1

mkdir -p ./CompiledPdfOutput/temp

echo "Working on $first..."
#break_line

cd $first
echo " --Entered $first directory-- "

flies_exist=$(ls -1q * | wc -l)
version=1


while [ $flies_exist -gt 50 ]
do

mkdir ../CompiledPdfOutput/temp/$first-$version

set --
for f in .* *; do
  [ "$#" -lt 50 ] || break
  [ -f "$f" ] || continue
  [ -L "$f" ] && continue
  set -- "$@" "$f"
done

mv -- "$@" ../CompiledPdfOutput/temp/$first-$version/
flies_exist=$(ls -1q * | wc -l)
version=$(($version + 1))

done

mkdir ../CompiledPdfOutput/temp/$first-$version
set --
for f in .* *; do
  [ "$#" -lt 50 ] || break
  [ -f "$f" ] || continue
  [ -L "$f" ] && continue
  set -- "$@" "$f"
done
mv -- "$@" ../CompiledPdfOutput/temp/$first-$version/

cd ..

find CompiledPdfOutput/temp/ -exec cp {} 1 \;

# convert *$ext $output.pdf
# echo " --Converted files in $first folder to pfd-- "

# mv $output.pdf $loc/CompiledPdfOutput/

cd ..
echo " --Exited the directory-- "


