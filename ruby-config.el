(add-to-list 'load-path "~/.emacs.d/vendor/rhtml/")
(require 'rhtml-mode)
(require 'rinari)
(require 'ri)
(require 'rvm)

(rvm-use-default)
(add-to-list 'auto-mode-alist '("\\.rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rxml$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))

(add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))

;; Hideshow in ruby
(add-hook 'ruby-mode-hook 'hs-minor-mode)

;; Syntax checking in flymake
(require 'flymake)
(defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))

(push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("Gemfile$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)

(add-hook 'ruby-mode-hook
          '(lambda ()
             ;; Don't want flymake mode for ruby regions in erb files and also on read only files
             (if (and (not (null buffer-file-name)) (file-writable-p buffer-file-name))
                 (flymake-mode))))

(eval-after-load 'ruby-mode
  '(progn
     ;; work around possible elpa bug
     (ignore-errors (require 'ruby-compilation))`
     (setq ruby-use-encoding-map nil)
     (add-hook 'ruby-mode-hook 'inf-ruby-keys)
     (add-hook 'ruby-mode-hook
               (lambda ()
                 (define-key ruby-mode-map "\C-c#" 'comment-or-uncomment-region)
                 ))
     (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     ))

;; Speedbar hacks
(add-hook 'speedbar-mode-hook
          (lambda()
            (speedbar-add-supported-extension "\\.rb")
            (speedbar-add-supported-extension "\\.ru")
            (speedbar-add-supported-extension "\\.erb")
            (speedbar-add-supported-extension "\\.rjs")
            (speedbar-add-supported-extension "\\.rhtml")
            (speedbar-add-supported-extension "\\.rake")))

(provide 'ruby-config)