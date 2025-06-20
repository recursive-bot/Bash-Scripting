#!/bin/bash
echo "Enter ip address in format 192.168.0 or 172.16.0 or 10.0.0" 
read -p "Enter ip address: " ip
echo "-----------"
echo "Alive Hosts"
for hosts in {1..254}
do
ping -c 1 $ip.$hosts | grep "bytes from" | cut -d " " -f 4 | tr -d ":" &
done
