(add-to-list 'load-path (locate-user-emacs-file "el-get/with-editor"))
(add-to-list 'load-path (locate-user-emacs-file "el-get/magit/lisp"))
(load (locate-user-emacs-file "el-get/magit/lisp/git-commit.elc"))
(require 'magit)
