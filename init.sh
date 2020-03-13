#!/usr/bin/env bash

# MACOS
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"



# HOMEBREW
brew install \
	git \
	mackup \
	fish \
	pyenv \
	poetry \
	fzf \
	ripgrep \
	htop \
	neovim \
	autojump \
	grc \
	bat \
	fd \
	exa \
	gnupg

brew cask install \
	google-chrome \
	jetbrains-toolbox \
	dropbox \
	slack \
	alfred \
	amethyst \
	iterm2 \
	karabiner-elements \
	transmission

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font-mono
brew untap homebrew/cask-fonts


# FISH
sudo echo '/usr/local/bin/fish' >> /etc/shells
chsh -s /usr/local/bin/fish

# PYTHON
pyenv install 3.8.1
pyenv global 3.8.1
pyenv shell 3.8.1

# VIQ/DEV
mkdir ~/Dev && cd ~/Dev
git clone git@github.com:ventureiq/viq-docker.git
git clone git@github.com:ventureiq/utils.git viq-utils
cd viq-docker
git clone git@github.com:ventureiq/viq-api.git
git clone git@github.com:ventureiq/viq-iscrape-service.git
git clone git@github.com:ventureiq/viq-webclient.git
git clone git@github.com:ventureiq/viq-services.git
git clone git@github.com:ventureiq/viq-es.git


