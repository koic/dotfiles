;; Add MELPA to the package archives:
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Install packages:
(unless (package-installed-p 'ivy)
  (package-install 'ivy))
(unless (package-installed-p 'counsel)
  (package-install 'counsel))
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(unless (package-installed-p 'counsel-projectile)
  (package-install 'counsel-projectile))
(unless (package-installed-p 'prescient)
  (package-install 'prescient))
(unless (package-installed-p 'ivy-prescient)
  (package-install 'ivy-prescient))

;; Load color themes
;; https://blog.shibayu36.org/entry/2014/02/02/194116
(add-to-list 'custom-theme-load-path
  (file-name-as-directory "~/.emacs.d/lisp/themes/"))
;(load-theme 'dark-laptop t t)
;(enable-theme 'dark-laptop)


(custom-set-faces
  '(region ((t (:background "blue" :foreground "#ffffff")))))

;; Config whitespace-mode
(mapc 'load (file-expand-wildcards (locate-user-emacs-file "lisp/custom-whitespace-mode.el")))

;; No Backup
(mapc 'load (file-expand-wildcards (locate-user-emacs-file "lisp/save.el")))

;; Config eglot:
(require 'eglot)
(add-to-list 'eglot-server-programs '(ruby-mode . ("bundle" "exec" "rubocop" "--lsp")))
;;(add-to-list 'eglot-server-programs '(ruby-mode . ("/Users/koic/src/github.com/rubocop/rubocop/exe/rubocop" "--lsp")))
(add-hook 'ruby-mode-hook 'eglot-ensure)
(add-hook 'ruby-mode-hook (lambda () (add-hook 'before-save-hook 'eglot-format-buffer nil 'local)))

;; Enable git-gutter-mode

;(add-hook 'prog-mode-hook 'git-gutter-mode)

;(global-git-gutter+-mode)
(global-git-gutter-mode t)

;; Ivy
(ivy-mode 1)

(setq ivy-re-builders-alist
  '((t . ivy--regex-ignore-order)))

;; Enable ivy-prescient
(ivy-prescient-mode 1)
(prescient-persist-mode 1)

;; recentf
(recentf-mode 1)

(setq recentf-max-saved-items 1000)

(defun ivy-recentf-open ()
  "Use `ivy-completing-read' to \\[find-file] a recent file."
    (interactive)
      (if (find-file (ivy-completing-read "Open recent file: " recentf-list))
        (message "Opening file...")
        (message "Aborting")))

(global-set-key (kbd "C-x C-r") 'ivy-recentf-open)

;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map) ;; config keybinding for projectile
(setq projectile-completion-system 'ivy) ;; Use ivy for completion system of the projectile

(global-set-key (kbd "C-x C-d") 'counsel-projectile-find-file)

;; open-junk-file
(global-set-key (kbd "C-x j") 'open-junk-file)

;; ghq
(defun ivy-ghq-open ()
  "Select a repository managed by ghq with ivy interface."
    (interactive)
      (let ((ghq-root (string-trim-right (shell-command-to-string "ghq root"))))
        (ivy-read "Select repository: "
          (split-string (shell-command-to-string "ghq list --full-path") "\n" t)
            :action (lambda (repo)
            (find-file repo)))))
(global-set-key (kbd "C-c C-g") 'ivy-ghq-open)

;; Config custom keybindings
(global-set-key (kbd "C-x C-b") 'split-window-below)
(global-set-key (kbd "C-x C-g") 'goto-line)
(global-set-key (kbd "C-h") 'delete-backward-char)

;;
;; TODO
;; Look and feel
;;

;; mode lines
(set-face-attribute 'mode-line nil
  :foreground "black"
  :background "gray"
  :box t) ;; Set `:bot nil` to disappear the frame border
(set-face-attribute 'mode-line-inactive nil
  :foreground "black"
  :background "white"
  :box t)

;; Enable visual line mode
;;   Thx http://alainmathematics.blogspot.jp/2013/07/emacs.html
(global-visual-line-mode)

;; Highlight cursor line
;(global-hl-line-mode t)

;; Display column number to mode line
(column-number-mode t)

;;(custom-set-faces
;;  '(hl-line ((t (:background "Gray90"))))
;;  )

;; Disable menu bar
(menu-bar-mode -1)

;; Disable mode names from mode line
(delete 'mode-line-modes mode-line-format)

;; Inhibit startup message
(setq inhibit-startup-message t)

;; Don't use soft tab by default and set 4 to tab width.
(setq-default tab-width 4 indent-tabs-mode nil)

;; C-k kill whole line
(setq kill-whole-line t)

;; Scroll just one line when hitting bottom of window
(setq scroll-conservatively 1)

;; Prefer horizontal split
(setq split-width-threshold nil)

;; Ignore beep
(setq ring-bell-function 'ignore)

;; Confirmation binding
(fset 'yes-or-no-p 'y-or-n-p)

;;
;; Auto-generated code
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat dark-laptop))
 '(custom-safe-themes
   '("e624f013e266f41148aa2e445a4b8681b0afb346a9126993e345309c9a829535" "cdc2a7ba4ecf0910f13ba207cce7080b58d9ed2234032113b8846a4e44597e41" "7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" "317a45f190eaa3ccf8af6168aa89112d9cb794f87f409bc7a0638edee20d07fd" "c3fa63eab93d1f0b4bf9f60a98a2848ba29c34cc6f2ef5cf4076d9c190a47a6c" "087af241cc83130395244db7fca84b545fef75da92d63462436f3ffef916fa33" "d86ddb4126c19487edd10a0f1a16f77fdaadafbdac9f4fcd695cf1c0a215117b" "b80d4f6dee7691fc5a437d760164c3eba202944b3f977d5b47bbb6b76cba0806" "69ecb7a75a0a8440df4b9ffe28b46dadf849b499c7e10680c26b99a84df773ca" "d1b30c69aaf27807108e358b08c6aec4759d7240bc530fca90fd5833813fbc84" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "f831c1716ebc909abe3c851569a402782b01074e665a4c140e3e52214f7504a0" "9dc64d345811d74b5cd0dac92e5717e1016573417b23811b2c37bb985da41da2" "a0d9281cf41e8a226f0539a7f54e4812fdeaaec36c751b84671df97a54013465" "4ca84f9861113f889d505b66c4a9c30b81400f450b54f4c857d3eb44c5bdc601" "09feeb867d1ca5c1a33050d857ad6a5d62ad888f4b9136ec42002d6cdf310235" "c2bce71b37ffd6e95fbd3b98d6eaadd113ec308f85149cfc8f50dee716764fed" "9ac11c78f208abf58e5b313a33147cbf209ad9dc9cb169bf82464b043b45ad7a" default))
 '(ignored-local-variable-values '((whitespace-line-column 100)))
 '(package-selected-packages
   '(git-gutter+ color-theme-modern yaml-mode with-editor transient sync-recentf swoop shut-up sass-mode rspec-mode package-utils open-junk-file migemo lsp-mode inflections helm-dash helm-bundle-show helm-ag git-gutter flymake-diagnostic-at-point flycheck feature-mode eglot counsel-projectile company ace-window ace-isearch)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
