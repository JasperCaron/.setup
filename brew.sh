#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed #--with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget #--with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
#brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
#brew install gs
brew install imagemagick #--with-webp
brew install lua
brew install lynx
#brew install p7zip
#brew install pigz
brew install pv
#brew install rename
#brew install rlwrap
#brew install ssh-copy-id
#brew install tree
#brew install vbindiff
#brew install zopfli
brew install git
brew install mackup
#brew install fish
brew install pyenv
brew install poetry
brew install fzf
brew install ripgrep
brew install htop
brew install neovim
brew install autojump
brew install grc
brew install bat
brew install fd
brew install exa
brew install ranger
brew install ncdu


brew cask install google-chrome
brew cask install jetbrains-toolbox
brew cask install dropbox
brew cask install slack
brew cask install alfred
brew cask install amethyst
brew cask install iterm2
brew cask install karabiner-elements
brew cask install transmission

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font-mono
brew untap homebrew/cask-fonts

brew cleanup