echo "Installing psutil for zshrc..."
pip3 install psutil

echo "Create symboliking .zshrc modified..."
if [ -f "$ZSHRC_CONFIG_FILE" ]; then
  mv $ZSHRC_FILE $ZSHRC_FILE.orig
  ln -s ~/dotfiles/configs/.zshrc $ZSHRC_FILE
else
  ln -s ~/dotfiles/configs/.zshrc $ZSHRC_FILE
fi

echo "Create symboliking spaceship theme..."
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/themes/spaceship.zsh-theme"

echo "Create symboliking .gitconfig..."
if [ -f "$GIT_CONFIG_FILE" ]; then
  mv $GIT_CONFIG_FILE $GIT_CONFIG_FILE.orig
  ln -s ~/dotfiles/configs/.gitconfig $GIT_CONFIG_FILE 
else
  ln -s ~/dotfiles/configs/.gitconfig $GIT_CONFIG_FILE
fi

echo "Create symboliking .alias..."
if [ -f "$ALIAS_FILE" ]; then
  mv $ALIAS_FILE $ALIAS_FILE.orig
  ln -s ~/dotfiles/configs/.alias $ALIAS_FILE
else
  ln -s ~/dotfiles/configs/.alias $ALIAS_FILE
fi

echo "Done!"
