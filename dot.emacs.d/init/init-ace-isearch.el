;; There's dirty hack due to couldn't load these files.
(add-to-list 'load-path (locate-user-emacs-file "elpa/ace-isearch-20150808.556"))
(add-to-list 'load-path (locate-user-emacs-file "elpa/helm-swoop-20160417.1457"))
(add-to-list 'load-path (locate-user-emacs-file "elpa/ace-jump-mode-20140616.115"))
(add-to-list 'load-path (locate-user-emacs-file "elpa/avy-20160414.415"))

(require 'ace-isearch)
(global-ace-isearch-mode +1)
(setq ace-isearch-use-function-from-isearch nil)
(define-key isearch-mode-map (kbd "M-o") 'helm-multi-swoop-all-from-isearch)
