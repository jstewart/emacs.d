;; Appearance
(setq cursor-type 'bar)
(blink-cursor-mode t)
(tool-bar-mode -1)
(setq column-number-mode t)
(global-hl-line-mode 1)

;; Color theme setup
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/vendor/color-theme-twilight.el")
(load-file "~/.emacs.d/vendor/color-theme-tomorrow.el")
(load-file "~/.emacs.d/vendor/color-theme-sanityinc-solarized.el")
(load-file "~/.emacs.d/vendor/color-theme-solarized.el")
(load-file "~/.emacs.d/vendor/color-theme-ir-black.el")

(when window-system
 (color-theme-sanityinc-solarized-dark))

(provide 'appearance)
