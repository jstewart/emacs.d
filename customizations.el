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
(defalias 'qrr 'query-replace-regexp)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; Tags
(setq path-to-ctags "/usr/local/bin/ctags")

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f %s/TAGS -e -R %s" path-to-ctags dir-name (directory-file-name dir-name)))
)

(provide 'customizations)
