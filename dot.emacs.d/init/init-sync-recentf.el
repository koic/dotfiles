(add-to-list 'load-path (locate-user-emacs-file "el-get/sync-recentf"))
(require 'sync-recentf)
(setq recentf-auto-cleanup 60)
(recentf-mode 1)
