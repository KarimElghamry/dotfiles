#!/bin/bash

# consts
BIN_FOLDER=/usr/local/bin/

# install stow
sudo apt-get update && sudo apt-get install stow -y

# define folder lists
home_stows=("config/" "tmux/" "vim/" "zsh/")
bin_stows=("scripts/")

# loop over home folder 
for folder in "${home_stows[@]}"; do
    echo "stowing $folder to $HOME"
	# adopt existing files
	stow --adopt -t $HOME $folder
	git restore .

	# mount new symlinks
	stow -v --restow -t $HOME $folder
done

# loop over bin folders
for folder in "${bin_stows[@]}"; do
    echo "stowing $folder to $BIN_FOLDER"
	# adopt existing files
	sudo stow --adopt -t $BIN_FOLDER $folder
	git restore .

	# mount new symlinks
	sudo stow -v --restow -t $BIN_FOLDER $folder
done

# reload shell
exec $SHELL -l
