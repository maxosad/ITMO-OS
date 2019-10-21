#!/bin/bash
grep -E -r -h "] ACPI:" /var/log > errors.log
grep -E "[A-Za-z0-9]\.[A-Za-z]" errors.log
