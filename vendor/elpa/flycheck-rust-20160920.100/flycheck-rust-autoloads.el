;;; flycheck-rust-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "flycheck-rust" "../../../../../.emacs.d/vendor/elpa/flycheck-rust-20160920.100/flycheck-rust.el"
;;;;;;  "209a16cd63394f94022c4216426bc8e4")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/flycheck-rust-20160920.100/flycheck-rust.el

(autoload 'flycheck-rust-setup "flycheck-rust" "\
Setup Rust in Flycheck.

If the current file is part of a Cargo project, configure
Flycheck according to the Cargo project layout.

\(fn)" t nil)

(autoload 'flycheck-rust-explain-error "flycheck-rust" "\
Explain ERROR-CODE by invoking `rustc --explain'.

ERROR-CODE defaults to the code of the error under point.

\(fn ERROR-CODE)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/flycheck-rust-20160920.100/flycheck-rust-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/flycheck-rust-20160920.100/flycheck-rust.el")
;;;;;;  (22508 50066 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; flycheck-rust-autoloads.el ends here
