
# bash script to configure a static ip for the cyberlab interface, only to the ubuntu server

# /etc/network/interfaces si ifupdown

echo -e "#This file describes the network interfaces available on your system\n# and how to activate them. For more information, see interfaces(5).\n" | cat >> /etc/network/interfaces
echo -e "source /etc/network/interfaces.d/*\n"
echo -e "# The loopback network interface\nauto lo\niface lo inet loopback"
# je renomme ens37 en cyberlab, et je lui donne une IP statique 99.99.99.99
echo -e "# The cyberlab network interface\nrename ens37=cyberlab\nauto cyberlab\ninet cyberlab static\naddress 99.99.99.99\nnetmask 255.255.255.0\nbroadcast 99.99.99.255\n"

sudo systemctl restart NetworkManager && sudo systemctl restart systemd-networkd

# objectif : posséder une ip statique et persistante, sur une interface dont le nom a été changé
# changing ens33 interface name to 'cyberlab'
sudo touch /etc/systemd/network/10-eth-dhcp.link
echo  "[Match]\nOriginalName=ens37\n[Link]\nName=cyberlab" | cat > /etc/systemd/network/10-eth-dhcp.link


# Vérifier quelque chose, mais je ne sais pas quoi
# Attention : ne mélange pas NetworkManager, Netplan, systemd-networkd et /etc/network/interfaces au hasard. Il faut d’abord déterminer quel gestionnaire réseau ta machine utilise, car la configuration persistante n’est pas la même selon la distribution.
systemctl is-active NetworkManager
systemctl is-active systemd-networkd
ls /etc/netplan 2>/dev/null


