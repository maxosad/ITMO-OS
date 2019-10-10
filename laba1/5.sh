#!/bin/bash
while [[ 1 ]]; do
read menu_item
case "$menu_item" in
1 ) vi ;;
2 ) nano ;;
3 ) links ;;
4 ) exit 0 ;;
* ) echo "Uncorrect item! Try again!"
esac

done

