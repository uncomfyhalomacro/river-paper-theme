#!/usr/bin/env bash

killall -q mako
while pgrep -x swaybg >/dev/null; do sleep 1; done
exec mako
