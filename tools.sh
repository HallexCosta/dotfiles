echo "Import envrionment variables"
GIT_CONFIG_FILE=~/.gitconfig
BIN_DIR=~/dotfiles/bin
ENV_CONFIGS=~/configs/.env.sh
SSH_EMAIL="hallex.costa@hotmail.com"
#source ~/dotfiles/configs/env.sh

# ln -s ~/dotfiles/.gitconfig ~/.gitconfig
# ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "Initializing auto-install tools.."
source $BIN_DIR/binaries.sh
source $BIN_DIR/nvm.sh
source $BIN_DIR/yarn.sh
source $BIN_DIR/neovim.sh
source $BIN_DIR/ssh.sh

echo "Done!"
