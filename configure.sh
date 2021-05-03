echo "Create symboliking for backup default configs .zshrc..."
mv ~/.zshrc ~/.zshrc.orig
ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "\nInstalling theme spaceship..."
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

echo "\nCreate symboliking spaceship theme..."
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "\nDone!"
