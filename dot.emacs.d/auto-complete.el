(require 'auto-complete-config)

(ac-config-default)
(add-to-list 'ac-modes 'text-mode)        ;; Auto enable to text-mode
(add-to-list 'ac-modes 'fundamental-mode) ;; fundamental-mode
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'yatex-mode)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)                  ;; C-n/C-p as Select candidate key bindings
(setq ac-use-fuzzy t)                     ;; Fuzzy match
