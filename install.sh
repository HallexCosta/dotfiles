echo "Import envrionment variables"
GIT_CONFIG_FILE=~/.gitconfig
BIN_DIR=~/dotfiles/bin
ENV_CONFIGS=~/configs/.env.sh
SSH_EMAIL="hallex.costa@hotmail.com"
ZSH_MODIFIED_FILE=~/.zshrc
#source ~/dotfiles/configs/env.sh

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

echo "Done!"
