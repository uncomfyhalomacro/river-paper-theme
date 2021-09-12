#!/bin/sh
latitude="$(curl "https://json.geoiplookup.io/$(curl https://ipinfo.io/ip)" | grep -i "latitude" | awk '{print $NF}' | cut -d',' -f1)"
longitude="$(curl "https://json.geoiplookup.io/$(curl https://ipinfo.io/ip)" | grep -i "longitude" | awk '{print $NF}' | cut -d',' -f1)"
killall -q wlsunset
while pgrep -x wlsunset >/dev/null; do sleep 1; done
if [ -n "${latitude}" ] && [ -n "${longitude}" ];
then
    echo "${latitude} ${longitude}" > "$HOME"/.sunset
    exec wlsunset -l "${latitude}" -L "${longitude}"
else
    exec wlsunset -l "$(cat "$HOME"/.sunset | awk '{print $1}')" -L "$(cat "$HOME"/.sunset | awk '{print $2}')"
fi
