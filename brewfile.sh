#!/bin/sh
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew update
brew upgrade

brew install ack
brew install aspell
brew install autoconf
brew install automake
brew install axel
brew install cairo
brew install cmake
brew install cmigemo
brew install colordiff
brew install coreutils
brew install ctags
brew install --with-cocoa emacs
brew install enscript
brew install fzf
brew install git
brew install git-when-merged
brew install gnu-sed
brew install go
brew tap b4b4r07/gomi && brew install gomi
brew install graphicsmagick
brew install graphviz
brew install hub
brew install imagemagick
brew install jq
brew install libxml2
brew install llvm
brew install migemogrep
brew install mongodb
brew install neo4j
brew install node
brew install nkf
brew install pandoc
brew install peco
brew install pstree
brew install ragel # Use to build `whitequark/parser`
brew install rbenv-default-gems
brew install rlwrap
brew install source-highlight
brew install the_silver_searcher
brew install tig
brew install tmux
brew install wget
brew install --without-etcdir zsh
brew install zsh-completions

brew tap homebrew/dupes
brew install less   # Terminal displays weird characters... Thanks to https://github.com/as-cii/terminal-emojify
brew install screen

brew install caskroom/cask/brew-cask
brew cask install iterm2 && brew cask cleanup
brew cask install mojibar
brew cask install ngrok

brew install https://raw.githubusercontent.com/BurntSushi/ripgrep/master/pkg/brew/ripgrep.rb
