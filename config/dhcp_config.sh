#!/bin/bash

sudo apt install kea-dhcp4-server -y
sudo systemctl status kea-dhcp4-server
sudo mv /etc/kea/kea-dhcp4.conf /etc/kea/kea-dhcp4.conf.bkp
sudo cat ./kea_conf.json > /etc/kea/kea-dhcp.conf
sudo systemctl restart kea-dhcp4-server
