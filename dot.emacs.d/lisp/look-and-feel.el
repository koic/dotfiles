(load-theme 'whiteboard t)

;; Enable visual line mode
;;   Thx http://alainmathematics.blogspot.jp/2013/07/emacs.html
(global-visual-line-mode)

;; Highlight cursor line
(global-hl-line-mode t)

(custom-set-faces
  '(hl-line ((t (:background "MistyRose1"))))
)

;; Disable menu bar
(menu-bar-mode -1)

;; Disable mode names from mode line
(delete 'mode-line-modes mode-line-format)

;; Inhibit startup message
(setq inhibit-startup-message t)

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

;; enable saveplace
(if (and (>= emacs-major-version 24) (>= emacs-minor-version 5))
  ;; For GNU Emacs 24.5 and older versions.
  (progn (require 'saveplace) (setq-default save-place t))
  ;; For GNU Emacs 25.1 and newer versions.
  (save-place-mode 1))
