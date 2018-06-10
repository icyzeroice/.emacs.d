(require 'cl)

;; Loop Facility:
;; http://www.gnu.org/software/emacs/manual/html_mono/cl.html#Loop-Facility

;; loop file buffer
(cl-loop for buf in (buffer-list)
	 collect (buffer-file-name buf))

(cl-loop for x from 1 to 100
	 for y = (* x x)
	 until (>= y 729)
	 finally return (list x (= y 729)))

(cl-loop repeat 20 do (insert "Ice Zero\n"))


(cl-loop for x on '(1 2 3 4) collect x)
