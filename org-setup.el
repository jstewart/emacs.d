;; Org-mode setup
(add-to-list 'load-path "~/.emacs.d/vendor/org/lisp")
(add-to-list 'load-path "~/.emacs.d/vendor/org/contrib/lisp")
(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)

;; use clean view
(setq org-hide-leading-stars t)

;; add timestamps to state changes for TODOs
(setq org-todo-keywords
       '((sequence "TODO(t!)" "WAIT(w@/!)" "|" "DONE(d@/!)" "CANCELED(c@)")))

 (setq org-link-abbrev-alist
       '(("jira" . "http://jira.fusionary.com:8080/browse/")
         ("google"   . "http://www.google.com/search?q=")))

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"))
(setq org-default-notes-file "~/org/notes.org")

(provide 'org-setup)
