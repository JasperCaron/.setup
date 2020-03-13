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
brew reinstall coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew reinstall moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew reinstall findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew reinstall gnu-sed #--with-default-names
# Install a modern version of Bash.
brew reinstall bash
brew reinstall bash-completion2

# Install `wget` with IRI support.
brew reinstall wget #--with-iri

# Install GnuPG to enable PGP-signing commits.
brew reinstall gnupg

# Install more recent versions of some macOS tools.
#brew reinstall vim --with-override-system-vi
brew reinstall grep
brew reinstall openssh
brew reinstall screen
brew reinstall php
brew reinstall gmp

# Install other useful binaries.
brew reinstall ack
#brew reinstall exiv2
brew reinstall git
brew reinstall git-lfs
#brew reinstall gs
brew reinstall imagemagick #--with-webp
brew reinstall lua
brew reinstall lynx
#brew reinstall p7zip
#brew reinstall pigz
brew reinstall pv
#brew reinstall rename
#brew reinstall rlwrap
#brew reinstall ssh-copy-id
#brew reinstall tree
#brew reinstall vbindiff
#brew reinstall zopfli
brew reinstall git
brew reinstall mackup
#brew install fish
brew reinstall pyenv
brew reinstall poetry
brew reinstall fzf
brew reinstall ripgrep
brew reinstall htop
brew reinstall neovim
brew reinstall autojump
brew reinstall grc
brew reinstall bat
brew reinstall fd
brew reinstall exa

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