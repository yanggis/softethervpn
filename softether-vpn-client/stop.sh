#!/bin/bash                                                                                                                                      
ACCOUNT=vpn
VPN_INTERFACE=soft_vpn

echo "Connect to VPN"
echo -e "2\n\nAccountDisconnect $ACCOUNT\n" | /usr/local/vpnclient/vpncmd

#echo "remove redirect traffic"
ifconfig vpn_$VPN_INTERFACE 0.0.0.0

#echo "Public ip :"
#dig +short myip.opendns.com @resolver1.opendns.com
