#!/bin/zsh

SESSION_NAME="vim IDE"

tmux new -d -s $SESSION_NAME
tmux send -t $SESSION_NAME "vim ." Enter 
tmux split-window -h -t $SESSION_NAME -p 15
tmux attach -t $SESSION_NAME:0.0
