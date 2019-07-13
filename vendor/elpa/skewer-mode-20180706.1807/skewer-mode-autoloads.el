;;; skewer-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "cache-table"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/cache-table.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/cache-table.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cache-table" '("cache-table-")))

;;;***

;;;### (autoloads nil "skewer-bower" "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-bower.el"
;;;;;;  "1941ba2dcd512d4dee99652ae4999f3b")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-bower.el

(autoload 'skewer-bower-refresh "skewer-bower" "\
Update the package listing and packages synchronously.

\(fn)" t nil)

(autoload 'skewer-bower-load "skewer-bower" "\
Dynamically load a library from bower into the current page.

\(fn PACKAGE &optional VERSION)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skewer-bower"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-bower.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-bower.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skewer-bower" '("skewer")))

;;;***

;;;***

;;;### (autoloads nil "skewer-css" "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-css.el"
;;;;;;  "626f6351f4cf457b5705dcf019a5de27")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-css.el

(autoload 'skewer-css-mode "skewer-css" "\
Minor mode for interactively loading new CSS rules.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skewer-css" "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-css.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skewer-css" '("skewer-css")))

;;;***

;;;***

;;;### (autoloads nil "skewer-html" "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-html.el"
;;;;;;  "26c8bb84e7d08aec18518816ce798172")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-html.el

(autoload 'skewer-html-mode "skewer-html" "\
Minor mode for interactively loading new HTML.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skewer-html"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skewer-html" '("skewer-html-")))

;;;***

;;;***

;;;### (autoloads nil "skewer-mode" "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-mode.el"
;;;;;;  "6863068eaeba59c7c590725745f54149")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-mode.el

(autoload 'list-skewer-clients "skewer-mode" "\
List the attached browsers in a buffer.

\(fn)" t nil)

(autoload 'skewer-mode "skewer-mode" "\
Minor mode for interacting with a browser.

\(fn &optional ARG)" t nil)

(autoload 'run-skewer "skewer-mode" "\
Attach a browser to Emacs for a skewer JavaScript REPL. Uses
`browse-url' to launch a browser.

With a prefix arugment (C-u), it will ask the filename of the
root document.  With two prefix arguments (C-u C-u), it will use
the contents of the current buffer as the root document.

\(fn &optional ARG)" t nil)

(autoload 'skewer-run-phantomjs "skewer-mode" "\
Connect an inferior PhantomJS process to Skewer, returning the process.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skewer-mode"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skewer-mode" '("skewer" "phantomjs-program-name" "httpd/skewer/")))

;;;***

;;;***

;;;### (autoloads nil "skewer-repl" "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-repl.el"
;;;;;;  "bf5a8da48fa29eee60bf757f0fc0a072")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-repl.el

(autoload 'skewer-repl--response-hook "skewer-repl" "\
Catches all browser messages logging some to the REPL.

\(fn RESPONSE)" nil nil)

(autoload 'skewer-repl "skewer-repl" "\
Start a JavaScript REPL to be evaluated in the visiting browser.

\(fn)" t nil)

(eval-after-load 'skewer-mode '(progn (add-hook 'skewer-response-hook #'skewer-repl--response-hook) (add-hook 'skewer-repl-mode-hook #'skewer-repl-mode-compilation-shell-hook) (define-key skewer-mode-map (kbd "C-c C-z") #'skewer-repl)))

;;;### (autoloads "actual autoloads are elsewhere" "skewer-repl"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-repl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skewer-repl" '("skewer-" "company-skewer-repl")))

;;;***

;;;***

;;;### (autoloads nil "skewer-setup" "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-setup.el"
;;;;;;  "ef2ed7f1a721ebc2029c57de6991ce83")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-setup.el

(autoload 'skewer-setup "skewer-setup" "\
Fully integrate Skewer into js2-mode, css-mode, and html-mode buffers.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/cache-table.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-bower.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-css.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-html.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-mode-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-mode.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-repl.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/skewer-mode-20180706.1807/skewer-setup.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; skewer-mode-autoloads.el ends here
