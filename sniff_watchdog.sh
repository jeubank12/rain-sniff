#!/bin/bash
if [[ -n $(ps aux | grep -E "[0-9]:[0-9]{2} tcpdump") ]] && [[ -n $(ps aux | grep -E "[0-9]:[0-9]{2} sed -ure") ]]; then
	echo running
	exit 0
else
	/etc/rc.local
fi
