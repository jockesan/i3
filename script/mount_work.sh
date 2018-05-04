#!/bin/bash

#check if we are on vpn or not

if [ -e /var/run/vpnagentd.pid ] 
  then
    echo "We are on vpn..."
    echo " Mount up..."
    mount_up.sh
   else 
    echo " No vpn found..exit"
    exit
fi 



