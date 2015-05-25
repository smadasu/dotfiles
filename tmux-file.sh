#!/bin/bash
export TERM=screen-256color-bce
tmux new-session -d
tmux send-keys 'vim '$1 'Enter'
tmux split-window -h
tmux resize-pane -R 30
tmux select-pane -L
tmux attach-session -d
