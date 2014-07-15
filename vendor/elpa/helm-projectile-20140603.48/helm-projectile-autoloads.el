;;; helm-projectile-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (helm-projectile) "helm-projectile" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20140603.48/helm-projectile.el"
;;;;;;  "2b8e8ad5831ee97927cc61d2e8cac348")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20140603.48/helm-projectile.el

(autoload 'helm-projectile "helm-projectile" "\
Use projectile with Helm instead of ido.

With a prefix ARG invalidates the cache first.

\(fn &optional ARG)" t nil)

(eval-after-load 'projectile '(define-key projectile-mode-map (kbd "C-c p h") 'helm-projectile))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20140603.48/helm-projectile-pkg.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20140603.48/helm-projectile.el")
;;;;;;  (21444 36496 899651 779000))

;;;***

(provide 'helm-projectile-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-projectile-autoloads.el ends here
