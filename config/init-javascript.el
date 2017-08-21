
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(defun my-js2-mode()
  (interactive)
  (setq default-tab-width 2))
  

;; add a hook for js2-refactor
(add-hook 'js2-mode-hook #'js2-refactor-mode)


(js2r-add-keybindings-with-prefix "C-c C-r")

(provide 'init-javascript)
