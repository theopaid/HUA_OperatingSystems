find . -type f -exec du -a -h {} + > myfile.txt # Find only files
sort -nr -o myfile.txt myfile.txt # Overwrite current file with the sorted one
head -10 myfile.txt # Output first 10
rm myfile.txt
