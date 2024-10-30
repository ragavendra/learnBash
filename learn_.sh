#!/bin/sh

X=0
while [ -n "$X" ]
do
	echo "Enter some text (RETURN to quit)"
	read X
	if [ -n "$X" ]; then
		echo "You said: $X"
	fi
done

#####

echo -en "Please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
	# If the grep found something other than 0-9
	# then it's not an integer.
	echo "Sorry, wanted a number"
else
	# The grep found only 0-9, so it's an integer.
	# We can safely do a test on it.
	if [ "$X" -eq "7" ]; then
		echo "You entered the magic number!"
	fi
fi

#
if [ "$X" -lt "0" ]
then
	echo "X is less than zero"
fi
if [ "$X" -gt "0" ]; then
	echo "X is more than zero"
fi

# new line char \
[ "$X" -le "0" ] && \
	echo "X is less than or equal to  zero"
[ "$X" -ge "0" ] && \
	echo "X is more than or equal to zero"
[ "$X" = "0" ] && \
	echo "X is the string or number \"0\""
[ "$X" = "hello" ] && \
	echo "X matches the string \"hello\""
[ "$X" != "hello" ] && \
	echo "X is not the string \"hello\""
[ -z "$X" ] && \
	echo "X is of null?"
[ -n "$X" ] && \
	echo "X is of nonzero length"
[ -f "$X" ] && \
	echo "X is the path of a real file" || \
		echo "No such file: $X"
[ -x "$X" ] && \
	echo "X is the path of an executable file"
[ "$X" -nt "/etc/passwd" ] && \
	echo "X is a file which is newer than /etc/passwd"

if [ $x -le 0 ]; then
	echo "x is less or equal to \"0\""
elif [ $x -gt 0 ]; then
	echo "x is greater than \"0\""
else
	echo "x is not a no"
fi

for i in 1 2 3 4 5
do
	echo "i is ${i}"
done

for i in hello 1 * 2 good bye
do
	echo "i is ${i}"
done

i="hello"
while [ $i != "quit" ]
do
	read i
	echo "Your input is $i"
done

#while :
#do
#       read i
#       echo "Your input is $i. Press ctrl c to quit"
#done

while read in_txt
do
case $in_txt in
"1") echo "one";;
"2") echo "two";;
*) echo "Unknown $in_txt";;
esac
done < dictFile

ls {,/usr,/usr/local}/{bin,sbin,lib}
