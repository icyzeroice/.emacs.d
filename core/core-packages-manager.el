;; core/packages/core-packages-manager.el

(package-initialize)

;; package-list from remote address
(setq package-archives '(
    ("gnu" . "https://elpa.emacs-china.org/gnu/")
    ("melpa" . "https://elpa.emacs-china.org/melpa/")
    ("org" . "https://elpa.emacs-china.org/org/")))


(defvar hyouka/packages '(
    ;; ----- Auto Completion -----
    company
    ;; ----- Better Editor -----
    smooth-scrolling
    hungry-delete
    swiper
    counsel
    smartparens
    popwin
    ;; ----- Major Mode -----
    js2-mode
    markdown-mode
))

;; cl -- Common Lisp Extension
;; cl is deprecated
;; cl-lib is alternative
(require 'cl)

(loop for pkg in hyouka/packages
     do (print (package-installed-p pkg)))

;; TODO: auto install & load packages
(defun hyouka/packages-installed-p()
  "check the hyouka/packages list"
  (loop for pkg in hyouka/packages
	when (not (package-installed-p pkg))
	do (return nil)
	finally (return t)))

;; if (hyouka/packages-installed-p) is nil, do body.
(unless (hyouka/packages-installed-p)
  (message "%s" "Installing missing packages...")
  (package-refresh-contents)
  (dolist (pkg hyouka/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; @export
(provide 'core-packages-manager)
