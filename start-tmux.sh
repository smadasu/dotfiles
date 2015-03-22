#!/bin/bash
export TERM=screen-256color-bce
tmux new-session -d 'vim $1'
tmux split-window -h
tmux send-keys 'lein repl' 'Enter'
tmux resize-pane -R 30
tmux attach-session -d
