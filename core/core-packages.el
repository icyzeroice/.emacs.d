
(package-initialize)
(setq package-archives '(
    ("gnu" . "https://elpa.emacs-china.org/gnu/")
    ("melpa" . "https://elpa.emacs-china.org/melpa/")
    ("org" . "https://elpa.emacs-china.org/org/")))


(defvar icy/packages '(
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

;; TODO: auto install & load packages
(defun icy-packages-installed-p ()
  "check the icy/packages list and install the package haven't been installed yet."
  (loop for pkg in icy/packages
    when (not (package-installed-p pkg))
      do (return nil)
      finally (return t)))



;; output
(provide 'core-packages)