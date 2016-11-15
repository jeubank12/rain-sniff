#!/bin/sh

sleep 5
tcpdump -i eth1 -tttt -A -l -q 'host chaney and tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0) and ip[2:2] > 120' | sed -ure 's/([0-9]{4}-[0-9]{2}-[0-9]{2}\s([0-9]{2}:){2}[0-9]{2}\.[0-9]+\s)IP.*/\1/;s/.+?(id=.*)$/\1/;s/&/ /g;s/=A([0\-][0-9]{2})([0-9]+)/=\1\.\2/g' >> /home/weather/weather/chaney_bridge1.log &
