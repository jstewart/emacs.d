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

;;;;; Vendor libs
(require 'org-setup)
(require 'full-ack)
(require 'anything-setup)
(require 'multi-term)
(require 'nxhtml)
(require 'whitespace)
(require 'undo-tree)
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
