;;; groovy-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "groovy-mode" "../../../../../.emacs.d/vendor/elpa/groovy-mode-201203310931/groovy-mode.el"
;;;;;;  "b52495e33205d2240b671ed97ece3db6")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/groovy-mode-201203310931/groovy-mode.el

(add-to-list 'auto-mode-alist '("\\.groovy$" . groovy-mode))

(defvar groovy-mode-hook nil "\
*Hook called by `groovy-mode'.")

(custom-autoload 'groovy-mode-hook "groovy-mode" t)

(autoload 'groovy-mode "groovy-mode" "\
Major mode for editing Groovy code.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `groovy-mode-hook'.

Key bindings:
\\{groovy-mode-map}

\(fn)" t nil)

(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/groovy-mode-201203310931/groovy-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/groovy-mode-201203310931/groovy-mode.el")
;;;;;;  (22630 38035 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; groovy-mode-autoloads.el ends here
