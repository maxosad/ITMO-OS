#!/bin/bash 
grep -E -r -o -h  "[_A-Za-z0-9.-]+\@[_A-Za-z0-9.-]+\.[A-Za-z]{2,6}" /etc > emails.lst
