;; Anything Setup

(require 'anything)
(require 'anything-config)
(require 'anything-match-plugin)
(require 'anything-etags)
(require 'anything-rails)

(global-set-key [f8] 'my-anything)
;; (global-set-key (kbd "M-.") 'anything-etags-select-from-here)

(defun my-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers
     anything-c-source-file-name-history
     anything-c-source-recentf
     anything-c-source-rails-project-files
     anything-c-source-files-in-current-dir
     anything-c-source-emacs-commands)
   "*my-anything*"))

(add-to-list 'anything-sources anything-c-source-rails-project-files)

(provide 'anything-setup)
