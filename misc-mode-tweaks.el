;; Js2 for javsascript
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-basic-offset 2)

;; Hideshow (code folding)
(load-library "hideshow")
(add-to-list 'hs-special-modes-alist
	     '(ruby-mode
	       "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
	       (lambda (arg) (ruby-end-of-block)) nil))

;; Change default colors for flymake
(require 'flymake)
(set-face-background 'flymake-errline "red4")
(set-face-background 'flymake-warnline "dark slate blue")


;; Mumamo is making emacs 23.3 freak out:
;; Remove this when Mumamo fixes itself.
(when (and (equal emacs-major-version 23)
           (equal emacs-minor-version 3))
  (eval-after-load "bytecomp"
    '(add-to-list 'byte-compile-not-obsolete-vars
                  'font-lock-beginning-of-syntax-function))
  ;; tramp-compat.el clobbers this variable!
  (eval-after-load "tramp-compat"
    '(add-to-list 'byte-compile-not-obsolete-vars
                  'font-lock-beginning-of-syntax-function)))

;; Multi term setup
(multi-term-keystroke-setup)
(setq multi-term-program "/bin/bash")

(global-undo-tree-mode)

(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'sgml-mode-hook 'zencoding-mode)

(provide 'misc-mode-tweaks)
