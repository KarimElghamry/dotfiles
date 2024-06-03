# install stow
sudo apt-get update && sudo apt-get install stow -y

# define folder ignore list
ignore = ("scripts")

# loop over folders
for folder in */ ; do
    if [[ ${ignore[@]} =~ $folder ]]
    then
        continue
    fi

	# adopt existing files
	stow --adopt -t $HOME $folder
	git restore .

	# mount new symlinks
	stow -v --restow -t $HOME $folder
done

# reload shell
exec $SHELL -l
