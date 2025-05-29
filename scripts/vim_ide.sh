#!/bin/zsh

open_session() {
    NAME=$1
    tmux new -d -s $NAME -n vim 

    # check if duplicate sessions
    if [ $? -ne 0 ]; then
        echo "attach to session? y/n"
        read input

        if [ $input = 'y' ] || [ $input = 'Y' ]; then
            tmux attach -t $NAME
            exit 0
        fi
    fi

    # otherwise, create a new tmux sessions
    tmux send -t $NAME "vim ." Enter 
    tmux new-window -n shell 
    tmux attach -t $NAME:0.0
}

SESSION_NAME=$(basename $(pwd)) # default session name

# get session name from args, if provided
if [ -n "$1" ]; then
    SESSION_NAME="$1"
fi

open_session $SESSION_NAME
