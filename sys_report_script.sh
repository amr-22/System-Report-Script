#!/bin/bash
# System Info Report Script
# This script generates a report with system details.

echo "==============================================================================="
echo "=============================  Report Script  ================================="
echo "==============================================================================="
echo

# check if command is found and send error massages to hill
if  command -v neofetch > /dev/null;
then
	echo -e "           >>>>>>>>>>>>>>>    System info    <<<<<<<<<<<<<<< \n"
	echo "$(neofetch)"
else
	echo -e "           >>>>>>>>>>>>>>>      System info    <<<<<<<<<<<<<<< \n"
	echo "$(cat /etc/os-release)"
fi

echo -e "\n\n           >>>>>>>>>>>>>>>    Today is    <<<<<<<<<<<<<<< \n"
date

echo -e "\n\n           >>>>>>>>>>>>>>>    Uptime is    <<<<<<<<<<<<<<< \n"
uptime


echo -e "\n-------------------------------------------------------------------------------"
echo -e "           >>>>>>>>>>>>>>>   All Disks Space  <<<<<<<<<<<<<<< \n"
echo "$(df -ah)"

echo -e "\n-------------------------------------------------------------------------------"
echo "           >>>>>>>>>>>>>>>   Memory Usage  <<<<<<<<<<<<<<< "
echo "$(free -h)"

echo -e "\n-------------------------------------------------------------------------------"
echo -e "           >>>>>>>>>>>>>>>    Battery Info  <<<<<<<<<<<<<<< \n "
echo "$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)"










echo
echo
echo "=============================================================================="
echo "=======================  Report Generated Succesfully  ======================="
echo "=============================================================================="
