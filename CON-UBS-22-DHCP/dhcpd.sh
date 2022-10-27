#!/bin/bash
# Purpose: Config ubuntu DHCP server
# https://ubuntu.com/server/docs/network-dhcp
# Author: Jose Maria Madronal GPL v2.0+ (Proxmox script)
# ------------------------------------------
#
#
# declare STRING variable
STRING="Scripts examples"

#print variable on a screen
echo $STRING

#Install DHCP
apt-get install isc-dhcp-server

# download githup configuration file
wget $


#Upload files without root
scp dhcpd.conf alumnes2i@192.168.1.41:.
ssh -t alumnes2i@192.168.1.41 'echo "copy files";
sudo cp dhcpd.conf /etc/dhcp/;
sudo service isc-dhcp-server restart'

#End script
