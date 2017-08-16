;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(delete-selection-mode 1)

;; high-lighted current line
;; (global-hl-line-mode 1)

;; close automatic backup and saving files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; close opening animation
(setq inhibit-splash-screen 1)

;; show the recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; 
(provide 'init-temp)
