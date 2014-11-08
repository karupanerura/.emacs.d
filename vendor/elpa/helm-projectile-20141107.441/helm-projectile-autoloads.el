;;; helm-projectile-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "helm-projectile" "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20141107.441/helm-projectile.el"
;;;;;;  "08889af7711c93c11588a204fe5ab935")
;;; Generated autoloads from ../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20141107.441/helm-projectile.el

(autoload 'helm-projectile "helm-projectile" "\
Use projectile with Helm instead of ido.

With a prefix ARG invalidates the cache first.
If invoked outside of a project, displays a list of known projects to jump.

\(fn &optional ARG)" t nil)

(eval-after-load 'projectile '(progn (define-key projectile-command-map (kbd "h") 'helm-projectile)))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20141107.441/helm-projectile-autoloads.el"
;;;;;;  "../../../../../../../../home/k-sato/.emacs.d/vendor/elpa/helm-projectile-20141107.441/helm-projectile.el")
;;;;;;  (21597 49275 813450 115000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-projectile-autoloads.el ends here
