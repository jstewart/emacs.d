;; Misc modes by filetype and hooks
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . javascript-mode))

(add-hook 'sgml-mode-hook 'zencoding-mode)

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
(require 'multi-term)
(multi-term-keystroke-setup)
(setq multi-term-program "/bin/bash")

(require 'undo-tree)
(global-undo-tree-mode)

(provide 'misc-mode-tweaks)
