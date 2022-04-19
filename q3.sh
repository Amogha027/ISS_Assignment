#!/bin/bash
echo "Enter the path of the file:"
read file

filesize=$(ls -lh $file | awk '{print $5}')
echo "size : $filesize"
echo

linecount=$(wc -l $file | awk '{print $1}') 
echo "number of lines : $linecount"
echo

wordcount=$(wc -w $file | awk '{print $1}')
echo "number of words : $wordcount"
echo

awk '$0="Line No.:"NR" --> count of words: "NF'  $file
echo

grep -wo '[[:alnum:]]\+' $file | sort | uniq -cd | awk '{print "word: "$2" --> count of repetition: "$1}'
echo
exit 0