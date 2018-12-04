;;; go-errcheck-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "go-errcheck" "../../../../../.emacs.d/vendor/elpa/go-errcheck-20160723.43/go-errcheck.el"
;;;;;;  "27b380f6ffff93bf3d3c0f2889396a8a")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/go-errcheck-20160723.43/go-errcheck.el

(autoload 'go-errcheck "go-errcheck" "\
Run errcheck on the current buffer's directory and display the
  output in a compilation buffer.

If ARG is non-nil, go-errcheck will query for the values of
IGNOREPKG and IGNORE which will override any defaults or file
local variables.

When called non-interactively, DIRECTORY, IGNOREPKG and IGNORE
can be specified as arguments. If DIRECTORY is nil, it will
default to the buffer's directory.

\(fn DIRECTORY IGNOREPKG IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "go-errcheck"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/go-errcheck-20160723.43/go-errcheck.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/go-errcheck-20160723.43/go-errcheck.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-errcheck" '("go-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/go-errcheck-20160723.43/go-errcheck-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/go-errcheck-20160723.43/go-errcheck.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; go-errcheck-autoloads.el ends here
