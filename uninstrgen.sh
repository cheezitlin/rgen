#!/bin/bash
echo "this script will uninstall rgen in 10 seconds, do ctrl z or ctrl c to cancel (suspend this program). run as sudo." # uninstaller for rgen
sleep 10
rm -f /usr/bin/rgen
echo "done. exiting.."
exit
