(require 'whitespace)
(setq whitespace-style '(
    face
    trailing
    tabs
    spaces
    empty
    space-mark
    tab-mark))

(setq whitespace-display-mappings
    '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

;; Enable whitespece visibility only whole space
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; Auto cleanup at before save
(setq whitespace-action '(auto-cleanup))

(global-whitespace-mode 1)

(defvar my/bg-color "#FFFFFF")
(set-face-attribute 'whitespace-trailing nil
    :background my/bg-color
    :foreground "DeepPink"
    :underline t)
(set-face-attribute 'whitespace-tab nil
    :background my/bg-color
    :foreground "LightSkyBlue"
    :underline t)
(set-face-attribute 'whitespace-space nil
    :background my/bg-color
    :foreground "GreenYellow"
    :weight 'bold)
(set-face-attribute 'whitespace-empty nil
    :background my/bg-color)
