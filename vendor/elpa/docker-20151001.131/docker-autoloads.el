;;; docker-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "docker" "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker.el"
;;;;;;  "76b482ddb45d3b29b4fc90caa0922519")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker.el

(autoload 'docker-mode "docker" "\
Minor mode to manage docker.

\(fn &optional ARG)" t nil)

(defvar docker-global-mode nil "\
Non-nil if Docker-Global mode is enabled.
See the command `docker-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `docker-global-mode'.")

(custom-autoload 'docker-global-mode "docker" nil)

(autoload 'docker-global-mode "docker" "\
Toggle Docker mode in all buffers.
With prefix ARG, enable Docker-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Docker mode is enabled in all buffers where
`docker-mode' would do it.
See `docker-mode' for more information on Docker mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "docker-containers" "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-containers.el"
;;;;;;  "98885730b06a9d75d9319abada33cd44")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-containers.el

(autoload 'docker-containers "docker-containers" "\
List docker containers.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "docker-images" "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-images.el"
;;;;;;  "d6b4fb31c518011de0cb60e0b4c1ecb8")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-images.el

(autoload 'docker-images "docker-images" "\
List docker images.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-containers.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-images.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker-process.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/docker.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/docker-20151001.131/tabulated-list-ext.el")
;;;;;;  (22054 61894 934736 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; docker-autoloads.el ends here
