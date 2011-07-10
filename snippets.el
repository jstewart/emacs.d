;; Init yasnippet
(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet-0.6.1c/")

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet-0.6.1c/snippets")

;; When entering rinari-minor-mode, consider also the snippets in the
;; snippet table "rails-mode"
(add-hook 'rinari-minor-mode-hook
          #'(lambda ()
              (setq yas/mode-symbol 'erb-mode)))

;; Need this to fix yas for js2-mode
(eval-after-load 'js2-mode
  '(progn
     (define-key js2-mode-map (kbd "TAB") (lambda()
                                            (interactive)
                                            (let ((yas/fallback-behavior 'return-nil))
                                              (unless (yas/expand)
                                                (indent-for-tab-command)
                                                (if (looking-back "^\s*")
                                                    (back-to-indentation))))))))

;;; If you are using MuMaMo or nxml, you will need to tweak the mumamo
;;; keymap to let tab work for yasnippets
;; (if (boundp 'mumamo:version)
;;     ((setq mumamo-map
;;           (let ((map (make-sparse-keymap)))
;;             (define-key map [(control meta prior)] 'mumamo-backward-chunk)
;;             (define-key map [(control meta next)] 'mumamo-forward-chunk)
;;             (define-key map [tab] 'yas/expand)
;;             map))
;;      (mumamo-add-multi-keymap 'mumamo-multi-major-mode mumamo-map))
;;  )

(provide 'snippets)
