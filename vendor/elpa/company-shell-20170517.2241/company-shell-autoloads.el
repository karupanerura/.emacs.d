;;; company-shell-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "company-shell" "../../../../../.emacs.d/vendor/elpa/company-shell-20170517.2241/company-shell.el"
;;;;;;  "b51d32f71c03f9af1b7e197dd1e09e0a")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/company-shell-20170517.2241/company-shell.el

(autoload 'company-shell-rebuild-cache "company-shell" "\
Builds the cache of all completions found on the $PATH and all fish functions.

\(fn)" t nil)

(autoload 'company-fish-shell "company-shell" "\
Company backend for fish shell functions.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(autoload 'company-shell "company-shell" "\
Company mode backend for binaries found on the $PATH.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(autoload 'company-shell-env "company-shell" "\
Company backend for environment variables.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/company-shell-20170517.2241/company-shell-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/company-shell-20170517.2241/company-shell.el")
;;;;;;  (23173 10413 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-shell-autoloads.el ends here
