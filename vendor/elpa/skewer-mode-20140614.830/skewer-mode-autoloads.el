;;; skewer-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (skewer-bower-load skewer-bower-refresh) "skewer-bower"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-bower.el"
;;;;;;  "35c0927215ae3f9572d896b606580c8d")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-bower.el

(autoload 'skewer-bower-refresh "skewer-bower" "\
Update the package listing and packages synchronously.

\(fn)" t nil)

(autoload 'skewer-bower-load "skewer-bower" "\
Dynamically load a library from bower into the current page.

\(fn PACKAGE &optional VERSION)" t nil)

;;;***

;;;### (autoloads (skewer-css-mode) "skewer-css" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-css.el"
;;;;;;  "626f6351f4cf457b5705dcf019a5de27")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-css.el

(autoload 'skewer-css-mode "skewer-css" "\
Minor mode for interactively loading new CSS rules.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (skewer-html-mode) "skewer-html" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-html.el"
;;;;;;  "adec1378cc494dc9bfbef1bc04a7ea2b")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-html.el

(autoload 'skewer-html-mode "skewer-html" "\
Minor mode for interactively loading new HTML.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (skewer-run-phantomjs run-skewer skewer-mode list-skewer-clients)
;;;;;;  "skewer-mode" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-mode.el"
;;;;;;  "7c983715a0d0f362c18f8c09682ecf7f")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-mode.el

(autoload 'list-skewer-clients "skewer-mode" "\
List the attached browsers in a buffer.

\(fn)" t nil)

(autoload 'skewer-mode "skewer-mode" "\
Minor mode for interacting with a browser.

\(fn &optional ARG)" t nil)

(autoload 'run-skewer "skewer-mode" "\
Attach a browser to Emacs for a skewer JavaScript REPL. Uses
`browse-url' to launch a browser.

\(fn)" t nil)

(autoload 'skewer-run-phantomjs "skewer-mode" "\
Connect an inferior PhantomJS process to Skewer, returning the process.

\(fn)" t nil)

;;;***

;;;### (autoloads (skewer-repl skewer-repl--response-hook) "skewer-repl"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-repl.el"
;;;;;;  "58eb9c376a6130f3eff20e9f00c9b28a")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-repl.el

(autoload 'skewer-repl--response-hook "skewer-repl" "\
Catches all browser messages logging some to the REPL.

\(fn RESPONSE)" nil nil)

(autoload 'skewer-repl "skewer-repl" "\
Start a JavaScript REPL to be evaluated in the visiting browser.

\(fn)" t nil)

(eval-after-load 'skewer-mode '(progn (add-hook 'skewer-response-hook #'skewer-repl--response-hook) (add-hook 'skewer-repl-mode-hook #'skewer-repl-mode-compilation-shell-hook) (define-key skewer-mode-map (kbd "C-c C-z") #'skewer-repl)))

;;;***

;;;### (autoloads (skewer-setup) "skewer-setup" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-setup.el"
;;;;;;  "ef2ed7f1a721ebc2029c57de6991ce83")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-setup.el

(autoload 'skewer-setup "skewer-setup" "\
Fully integrate Skewer into js2-mode, css-mode, and html-mode buffers.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/cache-table.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-bower.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-css.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-html.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-mode-pkg.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-mode.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-repl.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/skewer-mode-20140614.830/skewer-setup.el")
;;;;;;  (21410 40914 377155 859000))

;;;***

(provide 'skewer-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; skewer-mode-autoloads.el ends here
