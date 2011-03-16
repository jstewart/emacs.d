;; Appearance
(setq cursor-type 'bar)
(blink-cursor-mode t)
(setq term-default-bg-color nil)
(setq term-default-fg-color "#FFFFFF")
(setq column-number-mode t)
(global-hl-line-mode 1)

;; Color theme setup

(setq default-frame-alist '((background-color . "black")))
(require 'color-theme)
(color-theme-initialize)

(load-file "~/.emacs.d/vendor/color-theme-ir-black.el")
(color-theme-ir-black)
;; (color-theme-charcoal-black)
;; (color-theme-arjen)

(provide 'appearance)
