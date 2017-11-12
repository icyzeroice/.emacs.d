;; core-load-paths.el --- loaders for my emacs

(defun icy-load-file (args-path)
  "load emacs config file"
  (load-file (concat user-emacs-directory args-path)))

(defun icy-add-load-path (args-path)
  "add path to 'load-path list"
  (add-to-list 'load-path (concat user-emacs-directory args-path)))

(defun icy-add-theme-load-path (args-path)
  "add path to 'load-path list"
  (add-to-list 'custom-theme-load-path (concat user-emacs-directory args-path)))

(icy-add-load-path "core/")
(icy-add-load-path "components/")
(icy-add-load-path "custom/")
(icy-add-load-path "plugins/")

(icy-add-theme-load-path "custom/theme/")

(icy-load-file "core/core-start.el")
(icy-load-file "components/components-start.el")
(icy-load-file "plugins/plugins-start.el")
(icy-load-file "custom/custom-start.el")
