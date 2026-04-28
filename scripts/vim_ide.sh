#!/bin/zsh

open_session() {
    NAME=$1
    tmux new -d -s $NAME -n vim 

    # check if duplicate sessions
    if [ $? -ne 0 ]; then
        answer=$(bash -c "read -p 'attach to session $NAME? (y/n): ' -n 1 c; echo \$c")

        if [ $answer = 'y' ] || [ $answer = 'Y' ]; then
            tmux attach -t $NAME
        fi

        exit 0
    fi

    # otherwise, create a new tmux sessions
    tmux send -t $NAME "vim ." Enter 
    tmux new-window -n pi "pi"
    tmux new-window -n shell 
    tmux attach -t $NAME:0.0
}

SESSION_NAME=$(basename $(pwd)) # default session name

# get session name from args, if provided
if [ -n "$1" ]; then
    SESSION_NAME="$1"
fi

open_session $SESSION_NAME
