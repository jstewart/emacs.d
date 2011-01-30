;; Nicer etags

(global-set-key "\M-?" 'etags-select-find-tag-at-point)
(global-set-key "\M-." 'etags-select-find-tag)
(require 'etags-table)

(setq etags-table-search-up-depth 10)
;; (setq etags-table-alist
;;       (list
;;        '("\\.rb$" "~/emacs-tags/gems192" "~/emacs-tags/gems187")
;;        '("\\.erb$" "~/emacs-tags/gems192" "~/emacs-tags/gems187")
;;        '("\\.rhtml$" "~/emacs-tags/gems192" "~/emacs-tags/gems187")
;;        ))

(provide 'etags-config)

