"""
remove the space in the filename
rename the file and newfile will be without space
"""
IFS="\n"
for file in *.Jpeg;
do
    mv "$file" "${file//[[:space:]]}"
done
