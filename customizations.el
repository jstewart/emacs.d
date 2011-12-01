;; Misc customizations

;; Terminal Bell. No sounds. No flashes.
(setq ring-bell-function 'ignore)

;; Annoyances
(setq inhibit-startup-message t)

;; Nice to haves
(require 'uniquify)
(require 'wrap-region)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(wrap-region-global-mode t)

(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ack-prompt-for-directory t)
(global-auto-revert-mode t)
(setq-default show-trailing-whitespace t)
(add-hook 'term-mode-hook
      (lambda()
        (make-local-variable 'show-trailing-whitespace)
        (setq show-trailing-whitespace nil)))

(defalias 'qrr 'query-replace-regexp)


;; Prefer utf-8
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Clean buffer on save
(add-hook 'before-save-hook 'cleanup-buffer)

;; Don't shit all over my directories!
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

(provide 'customizations)
