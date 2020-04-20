;;; perl6-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "perl6-detect" "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-detect.el"
;;;;;;  "54e2790032b7181230275d9aa2b3fe08")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-detect.el

(add-to-list 'interpreter-mode-alist '("perl6" . perl6-mode))

(add-to-list 'auto-mode-alist '("\\.p[lm]?6\\'" . perl6-mode))

(defconst perl6-magic-pattern (rx line-start (0+ space) (or (and "use" (1+ space) "v6") (and (opt (and (or "my" "our") (1+ space))) (or "module" "class" "role" "grammar" "enum" "slang" "subset")))))

(autoload 'perl6-magic-matcher "perl6-detect" "\
Check if the current buffer is a Perl 6 file.

Only looks at a buffer if it has a file extension of .t, .pl, or .pm.

Scans the buffer (to a maximum of 4096 chars) for the first non-comment,
non-whitespace line.  Returns t if that line looks like Perl 6 code,
nil otherwise.

\(fn)" nil nil)

(add-to-list 'magic-mode-alist '(perl6-magic-matcher . perl6-mode))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "perl6-font-lock"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-font-lock.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-font-lock.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "perl6-font-lock" '("perl6-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "perl6-imenu"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-imenu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-imenu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "perl6-imenu" '("perl6-" "nqp-name-regex")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "perl6-indent"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-indent.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "perl6-indent" '("perl6-")))

;;;***

;;;### (autoloads nil "perl6-mode" "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-mode.el"
;;;;;;  "d40eb835c57b90f00e003f7f82542d41")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-mode.el

(autoload 'perl6-mode "perl6-mode" "\
Major mode for editing Perl 6 code.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "perl6-mode" "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "perl6-mode" '("perl6-mode-map")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "perl6-repl" "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-repl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "perl6-repl" '("perl6-" "run-perl6")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "perl6-unicode-menu"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-unicode-menu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-unicode-menu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "perl6-unicode-menu" '("menu-bar-final-items")))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-detect.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-font-lock.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-imenu.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-indent.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-mode-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-mode.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-repl.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/perl6-mode-20200414.1930/perl6-unicode-menu.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; perl6-mode-autoloads.el ends here
