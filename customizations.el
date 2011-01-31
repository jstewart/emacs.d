;; Misc customizations

;; Terminal Bell. No sounds. No flashes.
(setq ring-bell-function 'ignore)

;; Annoyances
(setq inhibit-startup-message t)

(when (equal system-type 'darwin)
;; Paths
(setenv "PATH" (concat "/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
(push "/usr/local/bin" exec-path))

;; Nice to haves
(setq-default show-trailing-whitespace t)
(defalias 'qrr 'query-replace-regexp)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(provide 'customizations)
