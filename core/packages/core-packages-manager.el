;; core/packages/core-packages-manager.el

(package-initialize)

;; package-list from remote address
(setq package-archives '(
    ("gnu" . "https://elpa.emacs-china.org/gnu/")
    ("melpa" . "https://elpa.emacs-china.org/melpa/")
    ("org" . "https://elpa.emacs-china.org/org/")))


(defvar iz/packages '(
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
(require 'cl)

(loop for pkg in iz/packages
     do (print (package-installed-p pkg)))

;; TODO: auto install & load packages
(defun iz-packages-installed-p()
  "check the iz/packages list"
  (loop for pkg in iz/packages
	when (not (package-installed-p pkg))
	do (return nil)
	finally (return t)))

;; if (iz-packages-installed-p) is nil, do body.
(unless (iz-packages-installed-p)
  (message "%s" "Installing missing packages...")
  (package-refresh-contents)
  (dolist (pkg iz/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; @export
(provide 'core-packages-manager)
