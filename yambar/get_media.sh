#!/usr/bin/env bash
while true; do
	media=$(playerctl -p spotify metadata -f "{{artist}} - {{title}}")
	player_status=$(playerctl -p spotify status)
	if [[ $player_status = "Playing" ]]
	then
		song_status=''
		echo -e "status|string|$song_status $media"
        #sleep 2s
        #echo ""
        #echo "status|string|$player_status "
	elif [[ $player_status = "Paused" ]]
	then
		song_status=''
		echo -e "status|string|$song_status $media"
        #sleep 2s
        #echo ""
        #echo "status|string|$player_status "
	else
		song_status=''
		echo -e "status|string|$song_status"
	fi
	echo ""
	sleep 1.0s
done
