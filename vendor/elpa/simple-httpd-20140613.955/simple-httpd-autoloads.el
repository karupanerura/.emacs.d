;;; simple-httpd-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (httpd-serve-directory httpd-stop httpd-start)
;;;;;;  "simple-httpd" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/simple-httpd-20140613.955/simple-httpd.el"
;;;;;;  "6358f7f776a111c2921a092c1f623e72")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/simple-httpd-20140613.955/simple-httpd.el

(autoload 'httpd-start "simple-httpd" "\
Start the web server process. If the server is already
running, this will restart the server. There is only one server
instance per Emacs instance.

\(fn)" t nil)

(autoload 'httpd-stop "simple-httpd" "\
Stop the web server if it is currently running, otherwise do nothing.

\(fn)" t nil)

(autoload 'httpd-serve-directory "simple-httpd" "\
Start the web server with given `directory' as `httpd-root'.

\(fn DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/simple-httpd-20140613.955/simple-httpd-pkg.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/simple-httpd-20140613.955/simple-httpd.el")
;;;;;;  (21410 40913 782651 401000))

;;;***

(provide 'simple-httpd-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; simple-httpd-autoloads.el ends here
