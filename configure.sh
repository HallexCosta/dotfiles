echo "Create symboliking .zshrc modified..."
mv $ZSH_MODIFIED_FILE $ZSH_MODIFIED_FILE.orig
ln -s ~/dotfiles/.gitconfig $ZSH_MODIFIED_FILE

echo "Create symboliking spaceship theme..."
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/themes/spaceship.zsh-theme"

echo "Create symboliking .gitconfig..."
if [ -f "$GIT_CONFIG_FILE" ]; then
  mv $GIT_CONFIG_FILE $GIT_CONFIG_FILE.orig
  ln -s ~/dotfiles/.gitconfig $GIT_CONFIG_FILE 
else
  ln -s ~/dotfiles/.gitconfig $GIT_CONFIG_FILE
fi

echo "Done!"
