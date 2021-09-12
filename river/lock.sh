#!/bin/bash 

pkill swayidle
sleep 1s 

exec swayidle -w \
          timeout 600 'brightnessctl set 30%' \
          timeout 120 'swaylock -f -i /home/uncomfy/.config/river/backgrounds/background.jpg' \
            resume 'brightnessctl set 100%' \
          before-sleep "swaylock -f -i /home/uncomfy/.config/river/backgrounds/background.jpg" & disown
