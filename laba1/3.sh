#!/bin/bash
read a
s=""
while [ "$a" != "q" ]; do
s="$s$a"
read a
done
s="$s$a"
echo "$s"


