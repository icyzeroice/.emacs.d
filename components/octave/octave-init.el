;; octave-init.el --- activate octave tools

;; TODO: module octave config
(autoload 'octave-mode "octave" nil t)

(setq auto-mode-alist
  (cons '("\\.m\\'" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
  (lambda ()
    (abbrev-mode 1)
    (auto-fill-mode 1)
    (run-octave 1)
    (if (eq window-system 'x)
        (font-lock-mode 1))))
 