;; core-load-paths.el --- loaders for my emacs

(defun hyouka/load-file (args-path)
  "load emacs config file"
  (load-file (concat user-emacs-directory args-path)))

(defun hyouka/add-load-path (args-path)
  "add path to 'load-path list"
  (add-to-list 'load-path (concat user-emacs-directory args-path)))

(hyouka/add-load-path "core/")

(hyouka/add-load-path "components/")

(hyouka/add-load-path "custom/")


(hyouka/load-file "core/core-start.el")
(hyouka/load-file "components/components-start.el")
(hyouka/load-file "custom/custom-start.el")

;; hot load
(global-auto-revert-mode 1)
