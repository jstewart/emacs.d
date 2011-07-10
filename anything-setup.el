;; Anything Setup

(require 'anything)
(require 'anything-config)
(require 'anything-match-plugin)

(global-set-key [f8] 'my-anything)

(defun my-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers
     anything-c-source-file-name-history
     anything-c-source-recentf
     anything-c-source-files-in-current-dir
     anything-c-source-emacs-commands)
   "*my-anything*"))

(provide 'anything-setup)
