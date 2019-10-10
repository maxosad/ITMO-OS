#!/bin/bash
read a
k=1
let ost="$a"%2
while [ "$ost" != 0 ]; do
let k=k+1
read a
let ost="$a"%2
done
echo "$k"

