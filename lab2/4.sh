#!/bin/bash
file /bin/* | grep " script" | awk -F":" '{print $1}' | xargs -n 1 head -n 1 | sed "s/ \//\//" | sort | uniq -c | sort -n -r | head -n 1 | awk -F"!" '{print $2}'
