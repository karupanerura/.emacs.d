;;; yaml-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "yaml-mode" "../../../../../.emacs.d/vendor/elpa/yaml-mode-20161105.814/yaml-mode.el"
;;;;;;  "80333967d90b1c493f3c0b2c832751e3")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/yaml-mode-20161105.814/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/yaml-mode-20161105.814/yaml-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/yaml-mode-20161105.814/yaml-mode.el")
;;;;;;  (22630 37988 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; yaml-mode-autoloads.el ends here
