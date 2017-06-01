;;; php-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "php-current" "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-current.el"
;;;;;;  "1fb1d8270c384cde11d8d7e2015345c7")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-current.el

(autoload 'php-current-class "php-current" "\
Insert current class name if cursor in class context.

\(fn &optional STR ARG)" t nil)

(autoload 'php-current-namespace "php-current" "\
Insert current namespace if cursor in in namespace context.

\(fn &optional STR ARG)" t nil)

;;;***

;;;### (autoloads nil "php-mode" "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-mode.el"
;;;;;;  "96ecfe52477e64d1c53c71c1bb0bd0b4")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-mode.el

(let ((loads (get 'php 'custom-loads))) (if (member '"php-mode" loads) nil (put 'php 'custom-loads (cons '"php-mode" loads))))

(defvar php-extra-constants 'nil "\
A list of additional strings to treat as PHP constants.")

(custom-autoload 'php-extra-constants "php-mode" nil)

(add-to-list 'interpreter-mode-alist (cons "php" 'php-mode))

(autoload 'php-mode "php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

(dolist (pattern '("\\.php[s345t]?\\'" "/\\.php_cs\\(\\.dist\\)?\\'" "\\.phtml\\'" "/Amkfile\\'" "\\.amk\\'")) (add-to-list 'auto-mode-alist `(,pattern . php-mode) t))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-array.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-classobj.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-control-structures.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-crack.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-current.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-dio.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-dom.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-exceptions.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-exif.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-ext.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-filesystem.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-gd.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-math.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-mode-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-mode.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-pcre.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-regex.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-simplexml.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-strings.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-var.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-xmlparser.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/php-mode-20161217.537/php-xmlreader.el")
;;;;;;  (22630 38005 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; php-mode-autoloads.el ends here
