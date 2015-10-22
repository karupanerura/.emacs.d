;;; docker-tramp-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "docker-tramp" "../../../../../.emacs.d/vendor/elpa/docker-tramp-20150908.1955/docker-tramp.el"
;;;;;;  "67b536cda9e94beea1d2b6cdc46444a9")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/docker-tramp-20150908.1955/docker-tramp.el

(defvar docker-tramp-docker-options nil "\
List of docker options.")

(custom-autoload 'docker-tramp-docker-options "docker-tramp" t)

(defconst docker-tramp-completion-function-alist '((docker-tramp--parse-running-containers "")) "\
Default list of (FUNCTION FILE) pairs to be examined for docker method.")

(defconst docker-tramp-method "docker" "\
Method to connect docker containers.")

(autoload 'docker-tramp-cleanup "docker-tramp" "\
Cleanup TRAMP cache for docker method.

\(fn)" t nil)

(autoload 'docker-tramp-add-method "docker-tramp" "\
Add docker tramp method.

\(fn)" nil nil)

(eval-after-load 'tramp '(progn (docker-tramp-add-method) (tramp-set-completion-function docker-tramp-method docker-tramp-completion-function-alist)))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/docker-tramp-20150908.1955/docker-tramp-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/docker-tramp-20150908.1955/docker-tramp.el")
;;;;;;  (22054 61890 227249 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; docker-tramp-autoloads.el ends here
