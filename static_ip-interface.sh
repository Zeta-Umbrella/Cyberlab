
# /etc/network/interfaces

# auto eth0
# inet eth0 static
# address 192.168.123.99
# netmask 255.255.255.0
# broadcast 192.168.123.255

# objectif : posséder une ip statique et persistante, sur une interface dont le nom a été changé et qui se veut statique et persistant.

fichier intéressant : /etc/systemd/network/10-eth-dhcp.link s'il existe pas faut ptet le créer hein

echo  "[Match]\nOriginalName=ens33\n[Link]\nName=eth-dhcp" | cat > /etc/systemd/network/10-eth-dhcp.link

sudo reboot

# Vérifier quelque chose, mais je ne sais pas quoi


systemctl is-active NetworkManager
systemctl is-active systemd-networkd



