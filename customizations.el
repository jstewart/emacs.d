;; Misc customizations

;; Terminal Bell. No sounds. No flashes.
(setq ring-bell-function 'ignore)

;; Annoyances
(setq inhibit-startup-message t)

;; Nice to haves
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)


(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ack-prompt-for-directory t)
(global-auto-revert-mode t)
(setq-default show-trailing-whitespace t)
(defalias 'qrr 'query-replace-regexp)

;; Prefer utf-8
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(provide 'customizations)
