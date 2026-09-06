
# configurer l'ip statique

# /etc/network/interfaces si ifupdown
auto cyberlab
inet cyberlab static
address 192.168.123.99
netmask 255.255.255.0
broadcast 192.168.123.255

sudo systemctl restart networking

# objectif : posséder une ip statique et persistante, sur une interface dont le nom a été changé et qui se veut statique et persistant.

# changing ens33 interface name to 'cyberlab'
sudo touch /etc/systemd/network/10-eth-dhcp.link
echo  "[Match]\nOriginalName=ens33\n[Link]\nName=cyberlab" | cat > /etc/systemd/network/10-eth-dhcp.link


# appliquer les changements --> sudo reboot?????

# Vérifier quelque chose, mais je ne sais pas quoi
# Attention : ne mélange pas NetworkManager, Netplan, systemd-networkd et /etc/network/interfaces au hasard. Il faut d’abord déterminer quel gestionnaire réseau ta machine utilise, car la configuration persistante n’est pas la même selon la distribution.
systemctl is-active NetworkManager
systemctl is-active systemd-networkd
ls /etc/netplan 2>/dev/null


