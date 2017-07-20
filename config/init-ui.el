
;; display the line number
(global-linum-mode 1)

(column-number-mode 1)

;; automatic matching bracket
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


(provide 'init-ui)
