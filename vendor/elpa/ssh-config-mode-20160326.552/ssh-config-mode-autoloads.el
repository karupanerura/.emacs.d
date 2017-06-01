;;; ssh-config-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ssh-config-mode" "../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20160326.552/ssh-config-mode.el"
;;;;;;  "a2d7bd28dc64d10ac47073c4a834245b")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20160326.552/ssh-config-mode.el

(autoload 'ssh-config-mode "ssh-config-mode" "\
Major mode for fontifiying ssh config files.

\\{ssh-config-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/\\.ssh/config\\'" . ssh-config-mode))

(add-to-list 'auto-mode-alist '("/sshd?_config\\'" . ssh-config-mode))

(add-to-list 'auto-mode-alist '("/known_hosts\\'" . ssh-known-hosts-mode))

(add-to-list 'auto-mode-alist '("/authorized_keys\\'" . ssh-authorized-keys-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20160326.552/ssh-config-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/ssh-config-mode-20160326.552/ssh-config-mode.el")
;;;;;;  (22630 37990 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ssh-config-mode-autoloads.el ends here
