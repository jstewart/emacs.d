;; Local setttings. Add your own machine specific things.

(custom-set-variables '(grep-program "ack -H -a --nogroup --nocolor"))
(global-auto-revert-mode t)
(set-face-attribute 'default nil :font "-apple-Monaco-medium-normal-normal-*-14-*-*-*-m-0-iso10646-")

;; I <3 vim keystrokes.
(require 'vimpulse)

;;;;; Default Frame Size
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 150))


(provide 'local-settings)
