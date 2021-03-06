echo "Import envrionment variables"
source ./configs/.env

echo "Create symboliking spaceship theme..."
ln -s "$ZSH_CUSTOM_DIR/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM_DIR/themes/spaceship.zsh-theme"


echo "Copying .zshrc modified..."
if [ -f "$ZSHRC_FILE" ]; then
  mv $ZSHRC_FILE $ZSHRC_FILE.orig
  cp $ZSHRC_FILE_UPDATED $HOME
else
  cp $ZSHRC_FILE_UPDATED $HOME
fi

echo "Create symboliking .gitconfig..."
if [ -f "$GIT_CONFIG_FILE" ]; then
  mv $GIT_CONFIG_FILE $GIT_CONFIG_FILE.orig
  ln -s $GIT_CONFIG_FILE_UPDATED $GIT_CONFIG_FILE 
else
  ln -s $GIT_CONFIG_FILE_UPDATED $GIT_CONFIG_FILE
fi

echo "Create symboliking .alias..."
if [ -f "$ALIAS_FILE" ]; then
  mv $ALIAS_FILE $ALIAS_FILE.orig
  ln -s $ALIAS_FILE_UPDATED $ALIAS_FILE
else
  ln -s $ALIAS_FILE_UPDATED $ALIAS_FILE
fi

echo "Create symboliking .tmux.conf..."
if [ -f "$TMUX_FILE" ]; then
  mv $TMUX_FILE $TMUX_FILE.orig
  ln -s $TMUX_FILE_UPDATED $TMUX_FILE
else
  ln -s $TMUX_FILE_UPDATED $TMUX_FILE
fi

echo "Re-loading .zshrc file..."
source ~/.zshrc

echo "Installing psutil for zshrc..."
pip3 install psutil

echo "Installing latest node and npm version"
nvm install --lts

echo "Use latest node and npm version"
nvm use --lts

print "node version: "
node -v

print "npm version: "
npm -v

echo "Installing and updating nvim plugins"
nvim +PlugInstall +UpdateRemotePlugins

echo "Done!"
