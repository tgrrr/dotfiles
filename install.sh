#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Set default MySQL root password and auth type.
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Create a code directory

if [ ! -d "$HOME/code" ]; then
  mkdir $HOME/code
fi

# TODO: clone my favourite repos here

# BUG: this killed my .zshrc file, and there isn't a .dotfile folder
# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
# rm -rf $HOME/.zshrc
# ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Install `oh my zsh` with powerlevel10k

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# copy vscode extensions to recommended extensions
cp extensions.json ~/.vscode/

# Install Atom extensions

sh ./atom-extensions.sh

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
