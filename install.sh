# If a backup folder already exists, then ERROR
if [ -d "$HOME/.dano-home-backup" ]; then
   echo "ERROR: A backup folder already exists at \"$HOME/.dano-home-backup\". \
         Run the uninstall script located there first." 
   exit 1
fi

# Backup all affected files
mkdir -p ~/.dano-home-backup
mv "$HOME/.bashrc" \
   "$HOME/.bash_profile" \
   "$HOME/.bash_aliases" \
   "$HOME/.vimrc" \
   '~/.dano-home-backup' 2> /dev/null

# Create symbolic links to the config files specified in this repository.
ln -s "$PWD/config-files/bashrc" "$HOME/.bashrc"
ln -s "$PWD/config-files/bash_profile" "$HOME/.bash_profile"
ln -s "$PWD/config-files/bash_aliases" "$HOME/.bash_aliases"
ln -s "$PWD/config-files/vimrc" "$HOME/.vimrc"

# Create a copy of the uninstall script in the backup directory in case someone
# nukes this repo, but needs to recover.
cp "$PWD/uninstall.sh" "$HOME/.dano-home-backup"
