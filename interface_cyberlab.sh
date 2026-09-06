#!/bin/bash

function verify_dev () {

  dev=$(ip link | grep "ens37\|eth1\|cyberlab" | awk -F: '{print $2}')
  
  if [[ $dev -z ]] then
    echo -e "\nThere is no device dedicated to the cyberlab LAN segment\n"
    return 1
    
  if [[ $dev -eq "cyberlab" ]] then
    echo -e "\nThere is already a device named cyberlab\n"

  else if  [[ $dev -n ]] then
    echo -e "\nDevice seem to be prepared for configuration\n"

}

  
    

