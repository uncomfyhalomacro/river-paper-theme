#!/usr/bin/env bash

killall -q yambar
while pgrep -x yambar >/dev/null; do sleep 1; done
#exec yambar --config $HOME/.config/yambar/bottom.yml & disown
exec yambar
