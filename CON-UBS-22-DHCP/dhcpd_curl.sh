#!/bin/bash
# Purpose: Config ubuntu DHCP server
# https://ubuntu.com/server/docs/network-dhcp
# Author: Jose Maria Madronal GPL v2.0+ (Proxmox script)
# ------------------------------------------
#
#
# declare STRING variable
STRING="Scripts examples install DHCP SERVICE"
#print variable on screen
echo $STRING

# declare variables to download files from private repository
TOKEN=""
headerToken="--header \'Authorization: token $TOKEN\'"
OWNER="josemmol"
REPO="S2I"
PATH="main/CON-UBS-22-DHCP/etc/dhcp/dhcpd.conf"
f_dchpd_conf="https://raw.githubusercontent.com/$OWNER/$REPO/$PATH"

#print f_dchpd_conf on screen
echo $f_dchpd_conf

#Install DHCP
apt install isc-dhcp-server

# download github configuration file
wget f_dchpd_conf="https://raw.githubusercontent.com/$OWNER/$REPO/$PATH"
#curl $headerToken --header 'Accept: application/vnd.github.v3.raw' --remote-name --location $f_dchpd_conf
     
# copy configuration file to etc directory
cp dhcpd.conf /etc/dhcp

systemctl restart isc-dhcp-server
