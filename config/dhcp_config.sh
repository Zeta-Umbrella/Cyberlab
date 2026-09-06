#!/bin/bash

sudo apt install kea-dhcp4-server -y
sudo systemctl status kea-dhcp4-server
sudo mv /etc/kea/kea-dhcp4.conf /etc/kea/kea-dhcp4.conf.bkp
sudo cat ./kea_conf.json > /etc/kea/kea-dhcp.conf
sudo systemctl restart kea-dhcp4-server
sudo systemctl status kea-dhcp4-server

# fichier csv contenant la liste des ip addresses : /var/lib/kea/kea-leases4.csv
# dhclient permet de demander une adresse ip
#  https://youtu.be/tXjKPJ5KJUY --> c'est la vidéo youtube de IT - Connect

