#!/bin/bash
BACKUP_PATH="$HOME/.dano-home-backup"

# Backup all affected files
mkdir -p "$BACKUP_PATH"
mv "$HOME/.bashrc" \
   "$HOME/.bash_profile" \
   "$HOME/.bash_aliases" \
   "$HOME/.vimrc" \
   "$HOME/.config/compton.conf" \
   "$HOME/.inputrc" \
   "$HOME/.config/dunst/dunst/dunstrc" \
   "$BACKUP_PATH" 2> /dev/null

# Create symbolic links to the config files specified in this repository.
ln -s "$PWD/config-files/bashrc" "$HOME/.bashrc"
ln -s "$PWD/config-files/bash_profile" "$HOME/.bash_profile"
ln -s "$PWD/config-files/bash_aliases" "$HOME/.bash_aliases"
ln -s "$PWD/config-files/vimrc" "$HOME/.vimrc"
ln -s "$PWD/config-files/compton" "$HOME/.config/compton.conf"
ln -s "$PWD/config-files/inputrc" "$HOME/.inputrc"
ln -s "$PWD/config-files/dunstrc" "$HOME/.config/dunst/dunstrc"
