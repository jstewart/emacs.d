(add-to-list 'load-path "~/.emacs.d/vendor/pony-mode")
(require 'tramp)
(require 'pony-mode)
(require 'python-pep8)
(require 'python-pylint)
(require 'virtualenv)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(provide 'python-config)