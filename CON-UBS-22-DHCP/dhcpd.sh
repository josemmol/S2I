#!/bin/bash
# Purpose: Config ubuntu DHCP server
# https://ubuntu.com/server/docs/network-dhcp
# Author: Jose Maria Madronal GPL v2.0+ (Proxmox script)
# ------------------------------------------
#
#
# declare STRING variable
STRING="Scripts examples"
f_dchpd_conf="https://raw.githubusercontent.com/josemmol/S2I/main/CON-UBS-22-DHCP/etc/dhcp/dhcpd.conf"
#print variable on a screen
echo $STRING

#Install DHCP
apt-get install isc-dhcp-server

# download githup configuration file
wget $f_dchpd_conf

systemctl restart isc-dhcp-server
systemctl status isc-dhcp-server


#Upload files without root
scp dhcpd.conf alumnes2i@192.168.1.41:.
ssh -t alumnes2i@192.168.1.41 'echo "copy files";
sudo cp dhcpd.conf /etc/dhcp/;
sudo service isc-dhcp-server restart'

#End script
