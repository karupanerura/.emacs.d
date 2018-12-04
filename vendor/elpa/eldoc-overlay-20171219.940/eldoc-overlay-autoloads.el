;;; eldoc-overlay-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "eldoc-overlay" "../../../../../.emacs.d/vendor/elpa/eldoc-overlay-20171219.940/eldoc-overlay.el"
;;;;;;  "98d35e99fa9d50bf7b000a67d3ce5e2c")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/eldoc-overlay-20171219.940/eldoc-overlay.el

(autoload 'global-eldoc-overlay-toggle "eldoc-overlay" "\
Globally toggle display of eldoc-overlay.

\(fn)" nil nil)

(autoload 'eldoc-overlay-toggle "eldoc-overlay" "\
Toggle display of eldoc-overlay in this buffer or with prefix arg GLOBAL-FLAG, globally.

\(fn GLOBAL-FLAG)" t nil)

(autoload 'eldoc-overlay-mode "eldoc-overlay" "\
Minor mode for displaying eldoc contextual documentation using a text overlay.

\(fn &optional ARG)" t nil)

(defvar global-eldoc-overlay-mode t "\
Non-nil if Global Eldoc-Overlay mode is enabled.
See the `global-eldoc-overlay-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-eldoc-overlay-mode'.")

(custom-autoload 'global-eldoc-overlay-mode "eldoc-overlay" nil)

(autoload 'global-eldoc-overlay-mode "eldoc-overlay" "\
Toggle Eldoc-Overlay mode in all buffers.
With prefix ARG, enable Global Eldoc-Overlay mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Eldoc-Overlay mode is enabled in all buffers where
`eldoc-overlay-enable' would do it.
See `eldoc-overlay-mode' for more information on Eldoc-Overlay mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "eldoc-overlay"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/eldoc-overlay-20171219.940/eldoc-overlay.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/eldoc-overlay-20171219.940/eldoc-overlay.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "eldoc-overlay" '("global-eldoc-overlay-" "eldoc-overlay-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/eldoc-overlay-20171219.940/eldoc-overlay-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/eldoc-overlay-20171219.940/eldoc-overlay.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; eldoc-overlay-autoloads.el ends here
