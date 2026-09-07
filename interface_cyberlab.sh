#!/bin/bash

function verify_dev_name () {

  dev=$(ip link | grep "ens37\|eth1\|cyberlab" | awk -F: '{print $2}')
  
  if [[ $dev -z ]] ; then
    echo -e "\nThere is no device dedicated to the cyberlab LAN segment\n"
    return 1
  fi
  
  if [[ $dev -eq "cyberlab" ]] ; then
    echo -e "\nThere is already a device named cyberlab\n"
    return 1
  fi
  
  else if  [[ $dev -n ]] ; then
    echo -e "\nDevice seem to be prepared for configuration\n"
    return 0
  fi
}

function set_dev_name () {

  mac=$(ip link show $dev | awk '/link\/ether/ {print $2}')
  
  echo -e "[Match]\nMACAddress=$mac\n[Link]\nName=$dev" | cat > /etc/systemd/network/10-lan0.link
  
  sudo systemctl restart systemd-udevd
  
# verify if $dev is corresponding to the name cyberlab
  if [[ $(ip link show $dev | awk '{print $2}' | grep cyberlab | sed 's/://g' | sed 's/\n//g' ) -eq 'cyberlab' ]] ; then
    echo -e "The device is now set to 'cyberlab'"
    return 0
  fi
}


    
  
  
  

  
