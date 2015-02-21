;;; swift-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "swift-mode" "../../../../../.emacs.d/vendor/elpa/swift-mode-20141204.2338/swift-mode.el"
;;;;;;  "273af15fce4863d874f70005aaf7c7be")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/swift-mode-20141204.2338/swift-mode.el

(autoload 'swift-mode-run-repl "swift-mode" "\
Run a REPL process, input and output via buffer `*swift-repl*'.
If there is a process already running in `*swift-repl*', switch to that buffer.
With argument CMD allows you to edit the command line (default is value
of `swift-repl-executable').
With DONT-SWITCH-P cursor will stay in current buffer.
Runs the hook `swift-repl-mode-hook' (after the `comint-mode-hook'
is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD &optional DONT-SWITCH-P)" t nil)

(autoload 'swift-mode "swift-mode" "\
Major mode for Apple's Swift programming language.

\\<swift-mode-map>

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.swift\\'" . swift-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/swift-mode-20141204.2338/swift-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/swift-mode-20141204.2338/swift-mode.el")
;;;;;;  (21659 34016 703998 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; swift-mode-autoloads.el ends here
