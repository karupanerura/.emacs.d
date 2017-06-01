;;; nginx-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "nginx-mode" "../../../../../.emacs.d/vendor/elpa/nginx-mode-20161023.223/nginx-mode.el"
;;;;;;  "84ae19cc2807894d6a66ef0f148f23da")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/nginx-mode-20161023.223/nginx-mode.el

(autoload 'nginx-mode "nginx-mode" "\
Major mode for highlighting nginx config files.

The variable nginx-indent-level controls the amount of indentation.
\\{nginx-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("nginx\\.conf\\'" . nginx-mode))

(add-to-list 'auto-mode-alist '("/nginx/.+\\.conf\\'" . nginx-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/nginx-mode-20161023.223/nginx-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/nginx-mode-20161023.223/nginx-mode.el")
;;;;;;  (22630 38008 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; nginx-mode-autoloads.el ends here
