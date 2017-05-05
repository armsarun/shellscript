
"""
change the file extension from .Jpeg to .jpg

we can add change to any extension

.txt to .text either .txt to .html
"""
for f in *.Jpeg; do
mv -- "$f" "${f%.Jpeg}.jpg"
done
