;;; yagist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "yagist" "../../../../../.emacs.d/vendor/elpa/yagist-20160418.508/yagist.el"
;;;;;;  "c0669b40f927512fd94b1f5e77b594ba")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/yagist-20160418.508/yagist.el

(autoload 'yagist-region "yagist" "\
Post the current region as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn BEGIN END &optional PRIVATE NAME)" t nil)

(autoload 'yagist-region-private "yagist" "\
Post the current region as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn BEGIN END)" t nil)

(autoload 'yagist-buffer "yagist" "\
Post the current buffer as a new paste at gist.github.com.
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'yagist-buffer-private "yagist" "\
Post the current buffer as a new private paste at gist.github.com.
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'yagist-region-or-buffer "yagist" "\
Post either the current region, or if mark is not set, the
current buffer as a new paste at gist.github.com Copies the URL
into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'yagist-region-or-buffer-private "yagist" "\
Post either the current region, or if mark is not set, the
current buffer as a new private paste at gist.github.com Copies
the URL into the kill ring.

\(fn)" t nil)

(autoload 'yagist-list "yagist" "\
Displays a list of all of the current user's gists in a new buffer.

\(fn)" t nil)

(autoload 'yagist-minor-mode "yagist" "\


\(fn &optional ARG)" t nil)

(defvar yagist-global-minor-mode nil "\
Non-nil if Yagist-Global minor mode is enabled.
See the `yagist-global-minor-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yagist-global-minor-mode'.")

(custom-autoload 'yagist-global-minor-mode "yagist" nil)

(autoload 'yagist-global-minor-mode "yagist" "\
Toggle Yagist minor mode in all buffers.
With prefix ARG, enable Yagist-Global minor mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yagist minor mode is enabled in all buffers where
`yagist-minor-mode-maybe' would do it.
See `yagist-minor-mode' for more information on Yagist minor mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "yagist" "../../../../../.emacs.d/vendor/elpa/yagist-20160418.508/yagist.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/yagist-20160418.508/yagist.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yagist" '("yagist-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/yagist-20160418.508/yagist-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/yagist-20160418.508/yagist.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; yagist-autoloads.el ends here
