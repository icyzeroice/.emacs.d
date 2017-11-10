;; core-load-paths.el --- routers for my emacs

(defun load-router (args/path)
  (load-file (concat user-emacs-directory args/path)))

(load-router "core/core-editor-config.el")
(load-router "core/core-main.el")
(load-router "components/components-start.el")
(load-router "plugins/plugins-start.el")
