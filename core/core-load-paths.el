;; core-load-paths.el --- loaders for my emacs

(defun iz-load-file (args-path)
  "load emacs config file"
  (load-file (concat user-emacs-directory args-path)))

(defun iz-add-load-path (args-path)
  "add path to 'load-path list"
  (add-to-list 'load-path (concat user-emacs-directory args-path)))

(iz-add-load-path "core/")
(iz-add-load-path "core/packages")

(iz-add-load-path "components/")
(iz-add-load-path "components/css")
(iz-add-load-path "components/html")
(iz-add-load-path "components/javascript")
(iz-add-load-path "components/orgmode")
(iz-add-load-path "components/octave")
(iz-add-load-path "components/python")

(iz-add-load-path "custom/")

(iz-add-load-path "plugins/")


(iz-load-file "core/core-start.el")
(iz-load-file "components/components-start.el")
(iz-load-file "plugins/plugins-start.el")
(iz-load-file "custom/custom-start.el")

;; hot load
(global-auto-revert-mode 1)
