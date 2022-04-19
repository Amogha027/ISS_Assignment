#!/bin/bash
file=$1
touch speech.txt
while read line
do
    c=$(echo "$line" | wc -w)
    if(($c>0))
    then 
        a=$(echo $line | rev | cut -d "~" -f2 | rev)
        w=$(echo $a | sed -r 's/\S\s*$//')
        k=$(echo $line | cut -d "~" -f2)
        echo $k "once said,"'"'$w'"'"." >> speech.txt
    fi
done < $file
exit 0