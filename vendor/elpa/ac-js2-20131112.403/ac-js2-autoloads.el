;;; ac-js2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ac-js2-mode ac-js2-jump-to-definition ac-js2-company
;;;;;;  ac-js2-completion-function ac-js2-expand-function) "ac-js2"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/ac-js2-20131112.403/ac-js2.el"
;;;;;;  "80aa6c91fc4d7915267c7f6ad91d1bc8")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/ac-js2-20131112.403/ac-js2.el

(autoload 'ac-js2-expand-function "ac-js2" "\
Expand the function definition left of point.
Expansion will only occur for candidates whose documentation
string contain a function prototype.

\(fn)" t nil)

(autoload 'ac-js2-completion-function "ac-js2" "\
Function for `completions-at-point'.

\(fn)" nil nil)

(autoload 'ac-js2-company "ac-js2" "\


\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(autoload 'ac-js2-jump-to-definition "ac-js2" "\
Jump to the definition of an object's property, variable or function.
Navigation to a property definend in an Object literal isn't
implemented.

\(fn)" t nil)

(autoload 'ac-js2-mode "ac-js2" "\
A minor mode that provides auto-completion and navigation for Js2-mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/ac-js2-20131112.403/ac-js2-pkg.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/ac-js2-20131112.403/ac-js2-tests.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/ac-js2-20131112.403/ac-js2.el")
;;;;;;  (21410 40914 984500 215000))

;;;***

(provide 'ac-js2-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ac-js2-autoloads.el ends here
