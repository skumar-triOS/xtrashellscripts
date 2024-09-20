#!/bin/bash
#This script prints systems information for documentation purposes

FILENAME="/etc/$(hostname)_systemreport.txt"
echo "The report will be saved to $FILENAME"

echo -e "Report generated on $(date +%F)\n" >$FILENAME
echo -e ">>>Basic System Information: \n" >>$FILENAME
uname -a >>$FILENAME

echo -e "\n\n>>>Storage Configuration: \n" >>$FILENAME
lsblk >>$FILENAME

echo -e "\n\n>>>Service Configuration: \n" >>$FILENAME
systemctl -a | grep service >>$FILENAME
