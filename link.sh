# install stow
sudo apt-get update && sudo apt-get install stow

# loop over folders
for folder in */ ; do
	stow --adopt -t $HOME $folder
	# remove previous stows
	stow -t $HOME -D $folder
	
	# mount new simlinks
	stow -v -t $HOME $folder
done

# reload shell
exec $SHELL -l
