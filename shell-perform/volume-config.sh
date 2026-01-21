#!/bin/bash
# Script: check_volumes.sh
# Purpose: List all volumes with their total size, used space, free space, and usage percentage

echo "==================== Disk/Volume Report ===================="
echo

# Header
printf "%-20s %-10s %-10s %-10s %-10s\n" "Filesystem" "Size" "Used" "Avail" "Use%"

# Loop through all mounted filesystems and display info
df -h --output=source,size,used,avail,pcent | tail -n +2 | while read line
do
    # Print in formatted way
    printf "%-20s %-10s %-10s %-10s %-10s\n" $line
done

echo
echo "==================== End of Report ========================="

