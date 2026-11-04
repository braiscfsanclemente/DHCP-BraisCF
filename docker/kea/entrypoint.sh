#!/bin/bash

rm /run/kea/kea-dhcp4.kea-dhcp4.pid

kea-dhcp4 -c /etc/kea/kea-dhcp4.conf -d