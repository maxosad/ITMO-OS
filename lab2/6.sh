#!/bin/bash
find /var/log/ -name "*.log" | xargs -n 1 cat | wc -l

