#!/bin/bash

iptables-restore < etc/iptables.ipv4.nat

atcd --atcd-wan eth0 --atcd-lan wlan0 >atcd.log & 

sleep 5

python ../atcui/manage.py runserver 0.0.0.0:8000 > atcui.log &

sleep 5

cd ../augmented-traffic-control/utils/
sh restore-profiles.sh localhost:8080

