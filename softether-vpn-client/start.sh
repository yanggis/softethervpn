#!/bin/bash

ACCOUNT=vpn
VPN_INTERFACE=soft_vpn
#IP_VPN_PRIVATE=192.168.30.1

echo "Connect to VPN"
echo -e "2\n\nAccountConnect $ACCOUNT\n" | /usr/local/vpnclient/vpncmd # Connect Account                                                        

echo "remvoe redirect traffic"
ip route del default via $IP_VPN_PRIVATE

dhclient $VPN_INTERFACE
