#!/bin/bash
ps -e --format pid,command | grep "\/sbin\/" | awk '{print $1}'
