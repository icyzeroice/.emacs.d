(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)

;; enable the use of cookies
(setq w3m-use-cookies t)

;; coding system option to utf-8
(setq w3m-coding-system 'utf-8
      w3m-file-coding-system 'utf-8
      w3m-file-name-coding-system 'utf-8
      w3m-input-coding-system 'utf-8
      w3m-output-coding-system 'utf-8
      w3m-terminal-coding-system 'utf-8)

(provide 'init-w3m)
