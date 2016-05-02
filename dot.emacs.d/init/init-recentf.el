(defmacro with-suppressed-message (&rest body)
  "Suppress new messages temporarily in the echo area and the `*Messages*' buffer while BODY is evaluated."
  (declare (indent 0))
  (let ((message-log-max nil))
    `(with-temp-message (or (current-message) "") ,@body)))

(require 'recentf)
(setq recentf-save-file (locate-user-emacs-file ".recentf"))
(setq recentf-max-saved-items 1000)               ;; Count of stored file in recentf
(setq recentf-exclude '(".recentf"))              ;; Ignore .recentf-self
(setq recentf-auto-cleanup 'never)                ;; Auto cleanup
(run-with-idle-timer 30 t '(lambda ()             ;; Store .recentf file every 30 secounds
  (with-suppressed-message (recentf-save-list))))

(add-to-list 'load-path (locate-user-emacs-file "el-get/recentf-ext"))
(require 'recentf-ext)
