;; core-load-paths.el --- routers for my emacs

(defun load-router (args/path)
  "load emacs config file"
  (load-file (concat user-emacs-directory args/path)))

(load-router "core/core-start.el")
(load-router "components/components-start.el")
(load-router "plugins/plugins-start.el")