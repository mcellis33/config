#!/bin/zsh

# This script installs the configuration files in this repo on Mac OS X.
# WARNING: This script will overwrite any existing configuration. Read it
# entirely before running it.

# TODO
# brew
# sublime text
# ITerm2
# ITerm2 configuration (keybinding for terminal notifier, etc.)
# terminal notifier

# Vim?

# Change shell for current user to zsh.
chsh -s /bin/zsh

# Install inconsolata font for current user.
curl http://levien.com/type/myfonts/Inconsolata.otf > $HOME/Library/Fonts/Inconsolata.otf

# Install oh-my-zsh.
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# Install zsh configuration.
cp .env $HOME
cp .aliases $HOME
cp .zshrc $HOME

# Install auxiliary scripts.
cp lgs.zsh $HOME
cp plgs.zsh $HOME

# Install bash configuration.
cp .bash_profile $HOME

# Install Sublime Text configuration files.
cp Preferences.sublime-settings.user "$HOME/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"
cp Preferences.sublime-settings.default "$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings"

# Install Git configuration.
cp .gitconfig $HOME
cp .gitignore_global $HOME

# Disable annoying window animations in Mac OS X.
# You can undo these lines by changing YES to NO and vice versa.
defaults write com.apple.dock workspaces-swoosh-animation-off -bool YES
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO

# Disabled because I'm not currently using Vim.

# Install Vim configuration.
# cp .vimrc $HOME/

# Install Golang ctags rules.
# cp .ctags $HOME/

# Install a command line utility for moving files to the Trash folder.
brew install trash
