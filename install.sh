#!/bin/sh

echo "Setting up Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

zsh zsh-command

#nvm install latest
nvm install --lts

#ruby local gem
mkdir "${ZDOTDIR:-$HOME}/.gem"

#cocoapods
gem install cocoapods --user-install
gem install xcodeproj --user-install

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
