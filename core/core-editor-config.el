;; core-editor-config.el --- editor simple config

;; close init welcome screen
(setq inhibit-splash-screen 1)

;; close tool bar
(tool-bar-mode -1)

;; close scroll bar
(scroll-bar-mode -1)

;; show line number
(global-linum-mode 1)

;; close edit auto backup
(setq make-backup-files nil)
