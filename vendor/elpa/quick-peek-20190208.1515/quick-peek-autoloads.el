;;; quick-peek-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "quick-peek" "../../../../../.emacs.d/vendor/elpa/quick-peek-20190208.1515/quick-peek.el"
;;;;;;  "e1debdc0770a71dbfee4148f118a3f70")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/quick-peek-20190208.1515/quick-peek.el

(autoload 'quick-peek-overlay-at "quick-peek" "\
Find overlay for line at POS.

\(fn POS)" nil nil)

(autoload 'quick-peek-show "quick-peek" "\
Show STR in an inline window at POS.
MIN-H (default: 4) and MAX-H (default: 16) are bounds on the
height of the window.  Setting MAX-H to `none' allows the inline
window to expand past the bottom of the current Emacs window.

\(fn STR &optional POS MIN-H MAX-H)" nil nil)

(autoload 'quick-peek-hide "quick-peek" "\
Hide inline windows.
With non-nil POS, clear only overlays on line of POS.
Return the number of overlays hidden.

\(fn &optional POS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "quick-peek" "../../../../../.emacs.d/vendor/elpa/quick-peek-20190208.1515/quick-peek.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/quick-peek-20190208.1515/quick-peek.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "quick-peek" '("quick-peek-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/quick-peek-20190208.1515/quick-peek-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/quick-peek-20190208.1515/quick-peek.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; quick-peek-autoloads.el ends here
