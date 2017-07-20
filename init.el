(package-initialize)

;; (add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/config")

;; Package Management
;;----------------------------------------
(require 'init-temp)

(require 'init-company)
(require 'init-package)
(require 'init-ui)
(require 'init-search)

(require 'init-html)
(require 'init-javascript)
(require 'init-markdown)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdownfmt markdown-preview-eww markdown-preview-mode markdown-mode markdown-mode+ js2-refactor helm-ag smex js2-mode jq-mode jquery-doc vue-mode vue-html-mode web-beautify web-mode company adjust-parens))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
