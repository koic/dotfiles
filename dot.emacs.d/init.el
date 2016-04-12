(load "~/.emacs.d/el-get.el")

(mapc 'load (file-expand-wildcards "~/.emacs.d/lisp/*.el"))
