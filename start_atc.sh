#!/bin/bash
atcd --atcd-wan eth0 --atcd-lan wlan0 &

atcd &



python ~/atcui/manage.py runserver 0.0.0.0:8000 &
sh ~/augmented-traffic-control/utils/restore-profiles.sh localhost:8080

