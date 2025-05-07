#!/bin/bash
echo "i am too lazy to implement a sudo check, but this needs to be ran as sudo!"
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 0.25
echo "copying rgen to /usr/bin..."
cp rgen /usr/bin/rgen
sleep 0.25
echo "done. exiting..."
exit
