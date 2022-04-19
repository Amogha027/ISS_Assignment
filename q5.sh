#!/bin/bash
echo "Enter string:"
read s

# Part 1:
l=${#s}
while (( $l>0 ))
do
	{
		echo -n "${s:l-1:1}"
		(( l-=1 ))
	}
done
echo

# Part 2:
len=${#s}
while (( $len>0 ))
do
	{
		x=$(printf "%d" \'${s:len-1:1})
		if (( x==90 || x==122 ))
		then
			let t=$x-25
		else
			let t=$x+1
		fi
		printf "\x$(printf %x $t)"
		(( len-=1 ))
	}
done
echo

# Part 3:
z=${#s}
(( k=z/2 ))
while (( $k>0 ))
do
	{
		echo -n "${s:k-1:1}"
		(( k-=1 ))
	}
done
(( k=z/2 ))
(( k+=1 ))
while [[ $k -le $z ]]
do
	{
		echo -n "${s:k-1:1}"
		(( k+=1 ))
	}
done
echo
exit 0