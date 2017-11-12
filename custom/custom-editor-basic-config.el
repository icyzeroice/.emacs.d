;; core-editor-config.el --- editor simple config

;; close init welcome screen
(setq inhibit-splash-screen 1)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(setq make-backup-files nil)

;; ----------- org-mode ------------
(setq org-indent-mode t)


(provide 'custom-editor-basic-config)