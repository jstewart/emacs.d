;; Misc customizations

;; Terminal Bell. No sounds. No flashes.
(setq ring-bell-function 'ignore)

;; Annoyances
(setq inhibit-startup-message t)

;; Nice to haves
(setq-default show-trailing-whitespace t)
(defalias 'qrr 'query-replace-regexp)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(global-auto-revert-mode t)
(setq ack-prompt-for-directory t)

(provide 'customizations)
