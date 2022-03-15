#!/bin/bash

for i in *.*; do
	w=$(basename $i .${i##*.}) # w is the name of each file without extension.
	x=$(basename .${i##*.}) # x is the extension of each file.
	mv $i "$w"_X"$x" # addition of the suffix _X on each file without modifying its extension.
done
