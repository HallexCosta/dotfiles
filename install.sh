echo "Import envrionment variables"
GIT_CONFIG_FILE=~/.gitconfig
BIN_DIR=~/dotfiles/bin
ENV_CONFIGS=~/configs/.env.sh
SSH_EMAIL="hallex.costa@hotmail.com"
#source ~/dotfiles/configs/env.sh

# ln -s ~/dotfiles/.gitconfig ~/.gitconfig
# ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "Initializing auto-install..."
source $BIN_DIR/binaries.sh
source $BIN_DIR/nvm.sh
source $BIN_DIR/yarn.sh
source $BIN_DIR/nvim.sh
source $BIN_DIR/ssh.sh
source $BIN_DIR/oh-my-zsh.sh
source $BIN_DIR/spaceship-theme.sh

echo "Restarting .zshrc file..."
source ~/.zshrc

if [ -f "$GIT_CONFIG_FILE" ]; then
  mv $GIT_CONFIG_FILE $GIT_CONFIG_FILE.orig
  ln -s ~/dotfiles/.gitconfig $GIT_CONFIG_FILE 
else
  ln -s ~/dotfiles/.gitconfig $GIT_CONFIG_FILE
fi

echo "Done!"
