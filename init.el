;; init.el
;;
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
  (push "/usr/local/bin" exec-path))

(unless (file-directory-p "~/.emacs.d/elpa")
            (make-directory "~/.emacs.d/elpa" t))

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;;;;; Vendor libs
(require 'org-setup)
(require 'anything-setup)
(require 'jira)
;; (require 'nxhtml)
(require 'yaml-mode)
(require 'zencoding-mode)
;;;;; end Vendor libs

;;;;; My customizations
(require 'appearance)
(require 'erc-setup)
(require 'custom-keys)
(require 'customizations)
(require 'misc-mode-tweaks)
(require 'snippets)
(require 'python-config)
(require 'ruby-config)
(require 'useful-functions)
(require 'etags-config)
(require 'local-settings)
;;;;; end my customizations

(provide 'init)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby")))))
