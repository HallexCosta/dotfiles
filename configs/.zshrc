# Set default editor
export VISUAL=which(nvim) || which(vim)
export EDITOR="$VISUAL"

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

# My Alias
source $HOME/.alias

# Load NVM
source $HOME/.nvm/nvm.sh

# set DISPLAY variable to the IP automatically assigned to WSL2
export DISPLAY=$(cat /etc/resolv.conf |  grep nameserver |  awk  '{print $2; exit;}'):0.0
/etc/init.d/dbus start &> /dev/null
