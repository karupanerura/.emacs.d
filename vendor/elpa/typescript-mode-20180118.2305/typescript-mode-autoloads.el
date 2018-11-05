;;; typescript-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "typescript-mode" "../../../../../.emacs.d/vendor/elpa/typescript-mode-20180118.2305/typescript-mode.el"
;;;;;;  "2c8415b18664eb7a2bda66681d62774f")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/typescript-mode-20180118.2305/typescript-mode.el

(autoload 'typescript-mode "typescript-mode" "\
Major mode for editing typescript.

Key bindings:

\\{typescript-mode-map}

\(fn)" t nil)

(eval-after-load 'folding '(when (fboundp 'folding-add-to-marks-list) (folding-add-to-marks-list 'typescript-mode "// {{{" "// }}}")))

(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/typescript-mode-20180118.2305/typescript-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/typescript-mode-20180118.2305/typescript-mode.el")
;;;;;;  (23173 10389 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; typescript-mode-autoloads.el ends here
