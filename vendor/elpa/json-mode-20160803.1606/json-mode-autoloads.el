;;; json-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "json-mode" "../../../../../.emacs.d/vendor/elpa/json-mode-20160803.1606/json-mode.el"
;;;;;;  "afa0730045f9c80e331c99296b618d4e")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/json-mode-20160803.1606/json-mode.el

(autoload 'json-mode "json-mode" "\
Major mode for editing JSON files

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

(add-to-list 'auto-mode-alist '("\\.jsonld$" . json-mode))

(autoload 'json-mode-show-path "json-mode" "\


\(fn)" t nil)

(autoload 'json-mode-beautify "json-mode" "\
Beautify / pretty-print the active region (or the entire buffer if no active region).

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/json-mode-20160803.1606/json-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/json-mode-20160803.1606/json-mode.el")
;;;;;;  (22630 38045 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; json-mode-autoloads.el ends here
