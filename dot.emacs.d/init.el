(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
    (url-retrieve-synchronously
      "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
      (eval-print-last-sexp)))

(load (locate-user-emacs-file "el-get.el"))

(setq el-get-user-package-directory (locate-user-emacs-file "init"))

(mapc 'load (file-expand-wildcards (locate-user-emacs-file "lisp/*.el")))
