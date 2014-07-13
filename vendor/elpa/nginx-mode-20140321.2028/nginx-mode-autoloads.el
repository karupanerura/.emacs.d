;;; nginx-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (nginx-mode) "nginx-mode" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/nginx-mode-20140321.2028/nginx-mode.el"
;;;;;;  "0c28fa61034861d16cbe5b0e32c88eaa")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/nginx-mode-20140321.2028/nginx-mode.el

(autoload 'nginx-mode "nginx-mode" "\
Major mode for highlighting nginx config files.

The variable nginx-indent-level controls the amount of indentation.
\\{nginx-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("nginx.conf$" . nginx-mode) '("/etc/nginx/.*" . nginx-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/nginx-mode-20140321.2028/nginx-mode-pkg.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/nginx-mode-20140321.2028/nginx-mode.el")
;;;;;;  (21390 40453 290053 653000))

;;;***

(provide 'nginx-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; nginx-mode-autoloads.el ends here
