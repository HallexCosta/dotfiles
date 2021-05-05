<h1 align="center">Dotfiles</h1>

## Guide

- [Configs](#configs)
- [Auto Install](#install)
- [Bins](#bins)
- [Usage](#usage)
  - [Getting Started](#getting-started)
  - [Tools](#tools)
  - [Shell](#shell)
  - [Shell Theme](#shell-theme)
- [Configure](#configure)

[](#configs)

## Configs

```sh
# dotfiles/configs/.env.sh
GIT_CONFIG_FILE=$HOME/.gitconfig
ZSHRC_FILE=$HOME/.zshrc
ALIAS_FILE=$HOME/.alias
BIN_DIR=$HOME/dotfiles/bin
ENV_CONFIGS=$HOME/configs/.env.sh
SSH_EMAIL="name@example.com"
```

> The wsl.conf file found in `dotfiles/configs/wsl.conf`.
> Must be move to directory `/etc/`, to stay so, `/etc/wsl.conf`.
> Your can use Windows Explorer access the directory
> `\\wsl$\Ubuntu-18.04`, and to moving the file

[](#auto-install)

## Auto Install

| #     | Installers                  | Added |
| ----- | --------------------------- | ----- |
| **1** | [Tools](#tools)             | ✅    |
| **2** | [Shell](#shell)             | ✅    |
| **3** | [Shell Theme](#shell-theme) | ✅    |
| **4** | [Configure](#configure)     | ✅    |

[](#bins)

## Bins

| #      | Bins                        | Added |
| ------ | --------------------------- | ----- |
| **1**  | Binaries                    | ✅    |
| **2**  | Oh-My-ZSH                   | ✅    |
| **3**  | Spaceship Theme - Oh-My-ZSH | ✅    |
| **4**  | Neovim                      | ✅    |
| **6**  | SSH                         | ✅    |
| **5**  | NVM                         | ✅    |
| **7**  | NodeJS                      | ✅    |
| **8**  | NPM                         | ✅    |
| **9**  | Yarn                        | ✅    |
| **10** | Tmux                        | ❌    |

[](#usage)

## Usage

[](#getting-started)

## Getting Started

```sh
# Clone the repo dotfiles
$ git clone https://github.com/HallexCosta/dotfiles.git

# Access project
$ cd dotfiles
```

## Tools

[](#tools)

```sh
# Run auto install for my tools
$ ./tools.sh
```

## Shell

[](#shell)

```sh
# Run auto install for shell (oh-my-zsh)
$ ./shell.sh
```

### Shell Theme

[](#shell-theme)

```sh
# Run auto install for shell theme (spaceship)
$ ./shell-theme.sh
```

## Configure

[](#configure)

```sh
# Run auto configure for shell theme, .zshrc,
# .gitconfig and .alias config
$ ./configure.sh
```
