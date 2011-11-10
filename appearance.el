;; Appearance
(setq cursor-type 'bar)
(blink-cursor-mode t)
;; (setq term-default-bg-color nil)
;; (setq term-default-fg-color "#FFFFFF")
(setq column-number-mode t)
(global-hl-line-mode 1)

;; Color theme setup
;; (setq default-frame-alist '((background-color . "black")))
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/vendor/color-theme-twilight.el")
(load-file "~/.emacs.d/vendor/color-theme-sanityinc-solarized.el")
(load-file "~/.emacs.d/vendor/color-theme-solarized.el")
(load-file "~/.emacs.d/vendor/color-theme-ir-black.el")
(color-theme-solarized-dark)

(provide 'appearance)
