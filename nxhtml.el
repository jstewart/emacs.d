;; NXTML init and tweaks
(load "vendor/nxhtml/autostart.el")

(setq
 nxhtml-global-minor-mode t
 mumamo-chunk-coloring '99
 nxhtml-skip-welcome t
 indent-region-mode t
 rng-nxml-auto-validate-flag nil
 nxml-degraded t)
(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . eruby-nxhtml-mumamo-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . eruby-nxhtml-mumamo-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . eruby-nxhtml-mumamo-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))

(provide 'nxhtml)
