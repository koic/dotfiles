(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

(add-hook 'markdown-mode-hook
  (lambda()
    (define-key markdown-mode-map (kbd "C-i") 'markdown-cycle)
      (hide-sublevels 2)))
