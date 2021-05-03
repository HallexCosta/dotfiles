echo "Create symbolikings for backup default configs .zshrc..."
mv ~/.zshrc ~/.zshrc.orig
ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "Installing theme spaceship..."
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

echo "Create symbolikings spaceship theme..."
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"