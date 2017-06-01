;;; ac-js2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ac-js2" "../../../../../.emacs.d/vendor/elpa/ac-js2-20140906.442/ac-js2.el"
;;;;;;  "8d9d241ebf504e483f38ac8b969e8c2d")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/ac-js2-20140906.442/ac-js2.el

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

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/ac-js2-20140906.442/ac-js2-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/ac-js2-20140906.442/ac-js2-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/ac-js2-20140906.442/ac-js2-tests.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/ac-js2-20140906.442/ac-js2.el")
;;;;;;  (22630 38057 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ac-js2-autoloads.el ends here
