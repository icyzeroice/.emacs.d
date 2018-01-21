;; core-load-paths.el --- loaders for my emacs

(defun icy-load-file (args-path)
  "load emacs config file"
  (load-file (concat user-emacs-directory args-path)))

(defun icy-add-load-path (args-path)
  "add path to 'load-path list"
  (add-to-list 'load-path (concat user-emacs-directory args-path)))

(icy-add-load-path "core/")
(icy-add-load-path "components/")
(icy-add-load-path "components/css")
(icy-add-load-path "components/html")
(icy-add-load-path "components/javascript")
(icy-add-load-path "components/orgmode")
(icy-add-load-path "components/octave")
(icy-add-load-path "components/python")
(icy-add-load-path "custom/")
(icy-add-load-path "plugins/")

(icy-load-file "core/core-start.el")
(icy-load-file "components/components-start.el")
(icy-load-file "plugins/plugins-start.el")
(icy-load-file "custom/custom-start.el")

;; hot load
(global-auto-revert-mode 1)
