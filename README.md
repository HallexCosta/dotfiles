# Dotfiles

## Guide
- Configs
- Install
  - Tools
  - Shell
  - Shell Theme
- Configure
- Bin

### Configs 
```sh
GIT_CONFIG_FILE=$HOME/.gitconfig
ZSHRC_FILE=$HOME/.zshrc
ALIAS_FILE=$HOME/.alias
BIN_DIR=$HOME/dotfiles/bin
ENV_CONFIGS=$HOME/configs/.env.sh
SSH_EMAIL="YOUR EMAIL"
```

### Install
```sh
# Clone the repo dotfiles
$ git clone https://github.com/HallexCosta/dotfiles.git

# Access project cloned
$ cd dotfiles

# Run auto install my tools
$ ./tools.sh

# Run auto install shell
$ ./shell.sh

# Run auto install shell theme
$ ./shell-theme.sh

# Run auto configure shell-theme, .zshrc and .gitconfig
$ ./configure.sh
```

### Bin
```sh
# Access the folder bin
$ cd bin
```
