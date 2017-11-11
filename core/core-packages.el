

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

;; output
(provide 'core-packages)