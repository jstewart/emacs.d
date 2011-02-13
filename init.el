;; init.el
;;
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(when (equal system-type 'darwin)
(setenv "PATH" (concat "/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
(push "/usr/local/bin" exec-path))

(require 'org-setup)

;; Load up ELPA, the package manager

;; test that ~/.emacs.d
;; and ~/.emacs.d/elpa/ exist
;; make them if not
(unless (file-directory-p "~/.emacs.d/elpa")
	    (make-directory "~/.emacs.d/elpa" t))

(require 'package)
(package-initialize)
(require 'starter-kit-elpa)

;;;;; Vendor libs
;; general coding/editing niceties
(require 'full-ack)
(require 'anything-setup)
(require 'line-num)
(require 'multi-term-setup)
(require 'vimpulse)
(require 'whitespace)
(require 'undo-tree)
(require 'textmate)
(textmate-mode)
(global-undo-tree-mode)

;; Additional Modes
(require 'rinari)
(require 'ri)
(require 'nxhtml)
(require 'rspec-mode)
;; (require 'ruby-block)
;; (ruby-block-mode t)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
;;;;; end Vendor libs

;;;;; My customizations
(require 'appearance)
(require 'ido-setup)
(require 'custom-keys)
(require 'misc-mode-tweaks)
(require 'prefer-utf)
(require 'useful-functions)
(require 'snippets)
(require 'erc-setup)
(require 'etags-config)
(require 'customizations)
;;;;; end my customizations

;;;;; Default Framse Size
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 150))

(provide 'init)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ack-prompt-for-directory t))
