# install stow
sudo apt-get update && sudo apt-get install stow -y

# loop over folders
for folder in */ ; do
	# adopt existing files
	stow --adopt -t $HOME $folder
	git restore .

	# mount new symlinks
	stow -v --restow -t $HOME $folder
done

# reload shell
exec $SHELL -l
