;;; auto-complete-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "auto-complete" "../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete.el"
;;;;;;  "a3f160c0928a3778fb12f5a73e86fe61")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete.el

(autoload 'auto-complete "auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global Auto-Complete mode is enabled.
See the `global-auto-complete-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auto-complete-config" "../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete-config.el"
;;;;;;  "ff41e174795402bf5f86dfbc7e9060d2")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete-config.el

(autoload 'ac-config-default "auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete-config.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/auto-complete-20160827.649/auto-complete.el")
;;;;;;  (22507 26570 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; auto-complete-autoloads.el ends here
