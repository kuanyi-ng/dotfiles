#!/usr/bin/env bash

# Only execute the following commands on MacOS
if [ "$(uname)" != "Darwin" ] ; then
    echo "Not MacOS!"
    exit 0
fi

# Dock
## delete all apps from the Dock
defaults write com.apple.dock persistent-apps -array
## automatically hide the Dock
defaults write com.apple.dock autohide -bool "true"
## minimize windows using the scale effect
defaults write com.apple.dock "mineffect" -string "scale"
## don't switch desktops based on usage
defaults write com.apple.dock "mru-spaces" -bool "false"

# Screenshot
## save screenshots in a different directory
SCREENCAPTURE_LOC="$HOME/Documents/Screenshots"
if [ ! -d SCREENCAPTURE_LOC ] ; then
    mkdir -p SCREENCAPTURE_LOC
fi
defaults write com.apple.screencapture "location" -string SCREENCAPTURE_LOC

# Finder
## show all filename extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
## show all hidden files
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
## show path bar in finder
defaults write com.apple.finder ShowPathbar -bool "true"

# Keyboard
## キーのリピート速度
defaults write NSGlobalDomain KeyRepeat -int 2
## キーのリピート認識時間
defaults write NSGlobalDomain InitialKeyRepeat -int 15
## フルキーボードアクセスを有効化
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Ref: https://zenn.dev/keyamin/articles/970af2dca9c4c5
