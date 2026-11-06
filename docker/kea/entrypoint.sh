#!/bin/bash


# Ruta por defecto a través del router, si se indica
if [ -n "$GATEWAY" ]; then
  ip route replace default via "$GATEWAY"
fi


rm /run/kea/kea-dhcp4.kea-dhcp4.pid

kea-dhcp4 -c /etc/kea/kea-dhcp4.conf -d &
kea-dhcp-ddns -c /etc/kea/kea-dhcp-ddns.conf -d