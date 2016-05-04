#!/bin/sh

DOTFILES_SRC=$HOME/work/git/dotfiles

ln -sf $DOTFILES_SRC/dot.agignore $HOME/.agignore
ln -sf $DOTFILES_SRC/dot.bash $HOME/.bash
ln -sf $DOTFILES_SRC/dot.gemrc $HOME/.gemrc
ln -sf $DOTFILES_SRC/dot.gitignore $HOME/.gitignore
ln -sf $DOTFILES_SRC/dot.oh-my-zsh $HOME/.oh-my-zsh
ln -sf $DOTFILES_SRC/dot.peco $HOME/.peco
ln -sf $DOTFILES_SRC/dot.screenrc $HOME/.screenrc
ln -sf $DOTFILES_SRC/dot.bashrc $HOME/.bashrc
ln -sf $DOTFILES_SRC/dot.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_SRC/dot.irbrc $HOME/.irbrc
ln -sf $DOTFILES_SRC/dot.pryrc $HOME/.pryrc
ln -sf $DOTFILES_SRC/dot.zshrc $HOME/.zshrc
