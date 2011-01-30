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

(setq path-to-ctags "/usr/local/bin/ctags")
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f %s/TAGS -e -R %s" path-to-ctags dir-name (directory-file-name dir-name)))
)

(provide 'etags-config)

