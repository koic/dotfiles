;; There's dirty hack due to couldn't load these files.
(add-to-list 'load-path (locate-user-emacs-file "el-get/helm-swoop"))
(add-to-list 'load-path (locate-user-emacs-file "el-get/ace-jump-mode"))
(add-to-list 'load-path (locate-user-emacs-file "el-get/avy"))

(global-ace-isearch-mode +1)
