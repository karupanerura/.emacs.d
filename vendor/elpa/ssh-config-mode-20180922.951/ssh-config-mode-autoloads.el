;;; ssh-config-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ssh-config-mode" "../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20180922.951/ssh-config-mode.el"
;;;;;;  "c3a47cc71b443721e0571b18494aab07")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20180922.951/ssh-config-mode.el

(autoload 'ssh-config-mode "ssh-config-mode" "\
Major mode for fontifiying ssh config files.

\\{ssh-config-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/\\.ssh/config\\'" . ssh-config-mode))

(add-to-list 'auto-mode-alist '("/sshd?_config\\'" . ssh-config-mode))

(add-to-list 'auto-mode-alist '("/known_hosts\\'" . ssh-known-hosts-mode))

(add-to-list 'auto-mode-alist '("/authorized_keys\\'" . ssh-authorized-keys-mode))

(autoload 'ssh-known-hosts-mode "ssh-config-mode" "\
Major mode for fontifiying ssh known_hosts files.
\\{ssh-known-hosts-mode}

\(fn)" t nil)
 (autoload 'ssh-authorized-keys-mode "ssh-config-mode" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "ssh-config-mode"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20180922.951/ssh-config-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20180922.951/ssh-config-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ssh-config-mode" '("ssh-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20180922.951/ssh-config-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20180922.951/ssh-config-mode-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20180922.951/ssh-config-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ssh-config-mode-autoloads.el ends here
