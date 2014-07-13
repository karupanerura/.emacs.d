;;; less-css-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (less-css-mode less-css-compile) "less-css-mode"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/less-css-mode-20140205.250/less-css-mode.el"
;;;;;;  "5a4dc3d82b9b908497c73c14a41ed547")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/less-css-mode-20140205.250/less-css-mode.el

(autoload 'less-css-compile "less-css-mode" "\
Compiles the current buffer to css using `less-css-lessc-command'.

\(fn)" t nil)

(autoload 'less-css-mode "less-css-mode" "\
Major mode for editing LESS files, http://lesscss.org/
Special commands:
\\{less-css-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/less-css-mode-20140205.250/less-css-mode-pkg.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/less-css-mode-20140205.250/less-css-mode.el")
;;;;;;  (21390 40457 861274 202000))

;;;***

(provide 'less-css-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; less-css-mode-autoloads.el ends here
