;; Misc modes by filetype and hooks
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
(setq js-indent-level 2)

(require 'deft)
(setq deft-text-mode 'markdown-mode)
(setq deft-use-filename-as-title t)
(setq deft-auto-save-interval 0)

;; This Makes smerge-mode active when there are git conflict markers in a file.
(defun sm-try-smerge ()
  (save-excursion
    (goto-char (point-min))
    (when (re-search-forward "^<<<<<<< " nil t)
      (smerge-mode 1))))
(add-hook 'find-file-hook 'sm-try-smerge t)

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

;; Multi term setup
(require 'multi-term)
(multi-term-keystroke-setup)
(setq multi-term-program "/bin/bash")

(require 'undo-tree)
(global-undo-tree-mode)

(provide 'misc-mode-tweaks)
