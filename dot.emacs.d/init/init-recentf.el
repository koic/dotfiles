(require 'recentf)
(setq recentf-save-file (locate-user-emacs-file ".recentf"))
(setq recentf-max-saved-items 1000)            ;; Count of stored file in recentf
(setq recentf-exclude '(".recentf"))           ;; Ignore .recentf-self
(setq recentf-auto-cleanup 10)                 ;; Auto cleanup
(run-with-idle-timer 30 t 'recentf-save-list)  ;; Store .recentf file every 30 secounds
