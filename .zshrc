# Set default editor
export EDITOR='/usr/bin/nvim'

# Setting environment variable for automatic plug-in loading
export ZINIT_HOME="$HOME/.zinit"
export ZINIT_CONFIG="$HOME/.zinit-config"

export ZPLUG_HOME="$HOME/.zplug"
export ZPLUG_CONFIG="$HOME/.zplug-config"

# Bootstrap Plugins with ZINIT or ZPLUG (default: ZINIT)
source $ZINIT_CONFIG/init.zsh
# source $ZPLUG_CONFIG/init.zsh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Export LS_COLORS (export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:")
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  ssh-agent
)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# My Alias
source $HOME/.alias

# Load NVM
source ~/.nvm/nvm.sh
