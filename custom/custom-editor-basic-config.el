;; core-editor-config.el --- editor simple config

;; close init welcome screen
(setq inhibit-splash-screen 1)


(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)


;; generator *~ file (auto backup file)
(setq make-backup-files nil)

;; auto save
;; (setq auto-save-default nil)


;; set encode method
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;; only one dired mode buffer
;; (put 'dired-find-alternate-file 'disable nil)

(provide 'custom-editor-basic-config)
