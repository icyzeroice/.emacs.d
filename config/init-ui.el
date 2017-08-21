
;; display the line number
(global-linum-mode 1)

(column-number-mode 1)

;; full screen
(tool-bar-mode -1)
(menu-bar-mode -1)

(defun fullscreen ()
      (interactive)
      (set-frame-parameter nil 'fullscreen
                           (if (frame-parameter nil 'fullscreen) nil 'fullboth)))

(defun ecb-activated-in-selected-frame()
  "A hack to use ECB in multiple frames. It first deactivates ECB, then
    activate it in current frame."
  (interactive)
  (let ((current-frame (selected-frame)))
        ; The frame foucs change when activating or deactivating ECB is weird, so
        ; activate current selected frame explicitly.
        (if (and (boundp 'ecb-minor-mode) (ecb-minor-mode))
            (ecb-deactivate))
        (select-frame current-frame)
        (ecb-activate)))


;; automatic matching bracket
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; themes
;; emacs-color-theme-solarized:
;; https://github.com/sellout/emacs-color-theme-solarized
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized t)
;; This allows you to have a mix of light and dark frames. I tend to use light frames in the GUI and dark frames in my terminal, so I use the following code:
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)


(provide 'init-ui)
