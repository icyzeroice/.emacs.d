
;; display the line number
(global-linum-mode 1)

(column-number-mode 1)

;; full screen
(tool-bar-mode -1)
(menu-bar-mode -1)

(defun fullscreen ()
      (interactive)
      (set-frame-parameter nil 'fullscreen
                           (if (frame-parameter nil 'fullscreen) nil 'fullboth)))

;; automatic matching bracket
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


(provide 'init-ui)
