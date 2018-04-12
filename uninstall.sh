BACKUP_PATH="$HOME/.dano-home-backup"

# Move config files back into place
mv $BACKUP_PATH/.bashrc \
   $BACKUP_PATH/.bash_profile \
   $BACKUP_PATH/.bash_aliases \
   $BACKUP_PATH/.vimrc \
   $HOME/

# Remove this script
rm $BACKUP_PATH/uninstall.sh

# Remove this directory
rmdir $BACKUP_PATH
