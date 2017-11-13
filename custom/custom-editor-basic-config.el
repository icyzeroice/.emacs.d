;; core-editor-config.el --- editor simple config

;; load theme
;; (load-theme 'atom-one-dark t)

;; close init welcome screen
(setq inhibit-splash-screen 1)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(setq make-backup-files nil)

;; encode
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; ----------- org-mode ------------
(setq org-indent-mode t)


(provide 'custom-editor-basic-config)
