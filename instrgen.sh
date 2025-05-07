#!/bin/bash
echo "i am too lazy to implement a sudo check, but this needs to be ran as sudo!"
sleep 0.25
echo "the program will be copied in 5 seconds, this is so that if you change your mind, then do ctrl c or ctrl z."
sleep 5
echo "copying rgen to /usr/bin..."
cp rgen /usr/bin/rgen
sleep 0.25
echo "done. exiting..."
exit
