#!/bin/bash
shopt -s lastpipe

firefoxprofile=("personal" "social" "school")

printf "%s\n" "${firefoxprofile[@]}" | fzf -e -i --prompt='launch firefox profile: ' | read -r profile
command="firefox -P \"${profile}\""

[ -z "${profile}" ]  && exit

riverctl spawn "${command}"
