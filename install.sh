#!/bin/bash

####################
# SOURCE
####################

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
ln -sf "$DOTFILES_DIR/.zsh_exports" ~
ln -sf "$DOTFILES_DIR/.zsh_aliases" ~
ln -sf "$DOTFILES_DIR/.vimrc" ~

####################
# NPM
####################

function npm-install() {
    npm install -g \
        diff-so-fancy \
        sass \
		terminal-image-cli \
        uglify-js \
        uglifycss \
        webpack \
        webpack-cli
}

npm-install
