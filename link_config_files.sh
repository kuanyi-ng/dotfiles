#!/usr/bin/env sh

GITHUB_REPO_LOCAL_DIR="$HOME/ghq/github.com/kuanyi-ng"
DOTFILES_DIR="$GITHUB_REPO_LOCAL_DIR/dotfiles"

# Create symbolic links with `ln -s` which means `ln -symbolic`

ln -sf "$DOTFILES_DIR/.gitconfig" ~/.gitconfig
ln -sf "$DOTFILES_DIR/.vimrc" ~/.vimrc
ln -sf "$DOTFILES_DIR/.tmux.conf" ~/.tmux.conf
ln -sf "$DOTFILES_DIR/Brewfile" ~/Brewfile
