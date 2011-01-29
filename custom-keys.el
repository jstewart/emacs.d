;; Custom Keymaps

;; Function Keys
(require 'rinari)
(global-set-key [f2] 'rinari-insert-erb-skeleton)
;; (global-set-key [f3] 'rinari-find-controller)
;; (global-set-key [f4] 'rinari-find-view)
;; (global-set-key [f5] 'rinari-find-test)
;; (global-set-key [f6] 'rinari-find-rspec)
(global-set-key [f7] 'multi-term)

;; From Emacs Starter Kit
;; Completion that uses many different methods to find options.
(global-set-key (kbd "M-/") 'hippie-expand)

;; Perform general cleanup.
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Jump to a definition in the current file. (This is awesome.)
(global-set-key (kbd "C-x C-i") 'ido-imenu)

;; File finding
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Window switching. (C-x o goes to the next window)
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o") (lambda () (interactive) (other-window 2))) ;; forward two

;; Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;; So good!
(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "C-c q") 'join-line)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-,") 'zencoding-expand-line)
(global-set-key (kbd "C-x y") 'anything-show-kill-ring)

;; TAGS
(global-set-key "\M-?" 'etags-select-find-tag-at-point)
(global-set-key "\M-." 'etags-select-find-tag)


(provide 'custom-keys)
