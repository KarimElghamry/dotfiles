#!/bin/bash

# consts
BIN_FOLDER=/usr/local/bin/

# helper functions
stow_files() {
    local target="${1}"
    shift
    local folders="${@}"

    echo "stowing $folders to $target"
	# adopt existing files
	sudo stow --adopt -t $target $folders
	git restore .

	# mount new symlinks
	sudo stow -v --restow -t $target $folders
}

# install stow
sudo apt-get update && sudo apt-get install stow -y

# define folder lists
home_stows=("config/" "tmux/" "vim/" "zsh/")
bin_stows=("scripts/")

stow_files $HOME ${home_stows[@]}
stow_files $BIN_FOLDER ${bin_stows[@]}

# reload shell
exec $SHELL -l
