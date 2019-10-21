#!/bin/bash
man bash | grep -E -o "[-A-Za-z]{4,}" | tr [A-Z] [a-z] | sort | uniq -c | sort -n -r | head -n 3

