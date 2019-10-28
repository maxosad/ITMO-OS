#!/bin/bash
ps -e -u root | wc -l; 
ps -e -u root --format pid,command | awk '{print $1 ":" $2}' > com;
