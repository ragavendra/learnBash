#!/bin/sh

someFunc() {

	echo "someFunc is called with $@"
	x=2
}

echo "Script is called with $@"
x=1

echo "x is now $x"

#someFunc 1 2 3

# using pipe will start tee before someFunc, so x will be 1 itself
someFunc 1 2 3 | tee out.log

echo "x is now $x"
