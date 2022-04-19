#!/bin/bash
read s
arr=(`echo $s | tr ',' ' '`)
l=${#arr[*]}
echo $l

for (( i=0; i<l; i++))
do
    for(( j=0; j<l-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$(( j+1 ))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$(( j+1 ))]}  
            arr[$(( j+1 ))]=$temp
        fi
    done
done
echo ${arr[*]}

exit 0