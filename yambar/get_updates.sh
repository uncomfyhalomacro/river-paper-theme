#!/bin/sh

while true; do
    echo "updates|string|Querying updates..."
    echo ""
    update=$(zypper lu | tail -n +5 | wc -l)
	if [ $update == "0" ]; then
		echo "updates|string|Up-to-date"
	else
    	echo "updates|string|Updates:$update"
	fi

    echo ""
    sleep 2s
    echo ""
    sleep "${1}h"
done
