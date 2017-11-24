;;; d-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "d-mode" "../../../../../.emacs.d/vendor/elpa/d-mode-20161022.717/d-mode.el"
;;;;;;  "b37c02dc4febf9dceee81c9047ab596a")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/d-mode-20161022.717/d-mode.el
 (add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))

(defvar d-mode-hook nil "\
*Hook called by `d-mode'.")

(custom-autoload 'd-mode-hook "d-mode" t)

(autoload 'd-mode "d-mode" "\
Major mode for editing code written in the D Programming Language.

See http://dlang.org for more information about the D language.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `d-mode-hook'.

Key bindings:
\\{d-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/d-mode-20161022.717/d-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/d-mode-20161022.717/d-mode.el")
;;;;;;  (22856 58206 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; d-mode-autoloads.el ends here
