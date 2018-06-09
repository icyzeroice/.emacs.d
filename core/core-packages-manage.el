
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


;; TODO: auto install & load packages
;; (defun iz-packages-installed-p ()
;;   "check the iz/packages list and install the package haven't been installed yet."
;;   (loop for pkg in icy/packages
;;     when (not (package-installed-p pkg))
;;       do (return nil)
;;       finally (return t)))

;; (icy-packages-installed-p)

;; (unless (iz-packages-installed-p)
;;   (message "%s" "Installing missing packages...")
;;   (package-refresh-contents)
;;   (dolist (pkg iz/packages)
;;     (when (not (package-installed-p pkg)
;;       (package-install pkg)))))

;; @export
(provide 'core-packages-manage)
