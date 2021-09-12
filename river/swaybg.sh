#!/usr/bin/env bash

killall -q wbg
while pgrep -x wbg >/dev/null; do sleep 1; done
exec $HOME/.local/bin/wbg $HOME/.config/river/backgrounds/background.jpg
