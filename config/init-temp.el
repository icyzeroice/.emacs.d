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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (smex js2-mode jq-mode jquery-doc vue-mode vue-html-mode web-beautify web-mode company adjust-parens))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; open the config files fast
;; (defun open-init-file ()
;;  (interactive)
;;  (find-file "~/.emacs.d/init.el"))

;; bind the function open-init-file to <F2>
;; (global-set-key (kbd "<f2>") 'open-init-file)

;; close opening animation
(setq inhibit-splash-screen 1)

;; show the recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; 
(provide 'init-temp)
