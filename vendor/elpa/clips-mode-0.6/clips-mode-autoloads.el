;;; clips-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (clips-mode) "clips-mode" "clips-mode.el" (20482
;;;;;;  32587))
;;; Generated autoloads from clips-mode.el

(autoload 'clips-mode "clips-mode" "\
Major mode for editing Clips code.
Editing commands are similar to those of other Lisp-like modes.

In addition, if an inferior Clips process is running, some additional
commands will be defined for evaluating expressions and controlling
the interpreter. The status of the process will also be displayed in
the modeline of all Clips buffers.

Commands:
\\{clips-mode-map}
Entry to this mode calls the value of `clips-mode-hook' if that value
is non-nil.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.clp$" . clips-mode))

;;;***

;;;### (autoloads (run-clips) "inf-clips" "inf-clips.el" (20482 32587))
;;; Generated autoloads from inf-clips.el

(autoload 'run-clips "inf-clips" "\
Run an inferior Clips process, with input and output via buffer
`*clips*'. If there is a process already running in `*clips*', just
switch to that buffer.
With argument, allows you to edit the command line (default is value
of `inferior-clips-program').  Runs the hooks from
`inferior-clips-mode-hook' (after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn &optional IMAGE)" t nil)

;;;***

;;;### (autoloads nil nil ("clips-mode-pkg.el") (20482 32587 983189))

;;;***

(provide 'clips-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; clips-mode-autoloads.el ends here
