#!/bin/bash 

tmux new-session -s erudite ranger \; split-window -l '85%' -h nvim \; split-window -v julia
