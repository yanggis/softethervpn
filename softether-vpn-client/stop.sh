#!/bin/bash                                                                                                                                      
ACCOUNT=vpn
VPN_INTERFACE=soft_vpn
#LOCAL_INTERFACE=eth0
#IP_VPN_PUBLIC=93.184.216.34
#IP_INTERNET_BOX=192.168.1.1

echo "Connect to VPN"
echo -e "2\n\nAccountDisconnect $ACCOUNT\n" | /usr/local/vpnclient/vpncmd

#echo "Redirect traffic"
#ip route del $IP_VPN_PUBLIC/32
#ip route del default
#ip route add default via $IP_INTERNET_BOX dev $LOCAL_INTERFACE
#ifconfig $VPN_INTERFACE 0.0.0.0

#echo "Public ip :"
#dig +short myip.opendns.com @resolver1.opendns.com
