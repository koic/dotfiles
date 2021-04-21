#!/bin/sh

DOTFILES_SRC=`ghq root`/github.com/koic/dotfiles

ln -sf $DOTFILES_SRC/dot.agignore $HOME/.agignore
ln -sf $DOTFILES_SRC/dot.aspell.conf $HOME/.aspell.conf
ln -sf $DOTFILES_SRC/dot.bashrc $HOME/.bashrc
ln -sf $DOTFILES_SRC/dot.bundle $HOME/.bundle
ln -sf $DOTFILES_SRC/dot.default-gems $HOME/.rbenv/default-gems
ln -sf $DOTFILES_SRC/dot.gemrc $HOME/.gemrc
ln -sf $DOTFILES_SRC/dot.git_template/hooks $HOME/.git_template
ln -sf $DOTFILES_SRC/dot.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_SRC/dot.gitignore $HOME/.gitignore
ln -sf $DOTFILES_SRC/dot.irbrc $HOME/.irbrc
ln -sf $DOTFILES_SRC/dot.inputrc $HOME/.inputrc
ln -sf $DOTFILES_SRC/dot.oh-my-zsh $HOME/.oh-my-zsh
ln -sf $DOTFILES_SRC/dot.peco $HOME/.peco
ln -sf $DOTFILES_SRC/dot.pryrc $HOME/.pryrc
ln -sf $DOTFILES_SRC/dot.screenrc $HOME/.screenrc
ln -sf $DOTFILES_SRC/dot.sh $HOME/.sh
ln -sf $DOTFILES_SRC/dot.tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES_SRC/dot.vimrc $HOME/.vimrc
ln -sf $DOTFILES_SRC/dot.zlogin $HOME/.zlogin
ln -sf $DOTFILES_SRC/dot.zshrc $HOME/.zshrc
