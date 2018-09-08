#!/bin/bash
BACKUP_PATH="$HOME/.dano-home-backup"

# If a backup folder already exists, then ERROR
if [ -d "$BACKUP_PATH" ]; then
   echo "ERROR: A backup folder already exists at '$BACKUP_PATH'."
   exit 1
fi

# Backup all affected files
mkdir -p "$BACKUP_PATH"
mv "$HOME/.bashrc" \
   "$HOME/.bash_profile" \
   "$HOME/.bash_aliases" \
   "$HOME/.vimrc" \
   "$BACKUP_PATH" 2> /dev/null

# Create symbolic links to the config files specified in this repository.
ln -s "$PWD/config-files/bashrc" "$HOME/.bashrc"
ln -s "$PWD/config-files/bash_profile" "$HOME/.bash_profile"
ln -s "$PWD/config-files/bash_aliases" "$HOME/.bash_aliases"
ln -s "$PWD/config-files/vimrc" "$HOME/.vimrc"
