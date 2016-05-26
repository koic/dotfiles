#!/bin/sh

DOTFILES_SRC=$HOME/src/github.com/koic/dotfiles/dot.emacs.d

ln -sf $DOTFILES_SRC/el-get.el $HOME/el-get.el
ln -sf $DOTFILES_SRC/el-get.lock $HOME/el-get.lock
ln -sf $DOTFILES_SRC/init $HOME/init
ln -sf $DOTFILES_SRC/init.el $HOME/init.el
ln -sf $DOTFILES_SRC/lisp $HOME/lisp
