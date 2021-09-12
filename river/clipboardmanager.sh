#!/bin/bash 

shopt -s lastpipe



clipman pick -t STDOUT | fzf -e -i --prompt="clipboard: "  | read -r hmm

[ -z "${hmm}" ] && exit

command="wl-copy \"${hmm}\""

riverctl spawn "${command}"

