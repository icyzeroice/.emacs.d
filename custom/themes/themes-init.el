;; themes-init.el --- load all the emacs themes

(defun hyouka/add-theme-load-path (args-path)
  "add path to 'custom-theme-load-path list"
  (add-to-list 'custom-theme-load-path (concat user-emacs-directory "custom/themes/" args-path)))

(hyouka/add-theme-load-path "atom-one-dark-theme/")

;; the current loading theme
(load-theme 'atom-one-dark t)