#!/bin/zsh

SESSION_NAME="vim IDE"

tmux new -d -s $SESSION_NAME -n vim 
tmux send -t $SESSION_NAME "vim ." Enter 
tmux new-window -n shell 
tmux attach -t $SESSION_NAME:0.0
