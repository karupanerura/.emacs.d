;;; dockerfile-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "dockerfile-mode" "../../../../../.emacs.d/vendor/elpa/dockerfile-mode-20151003.501/dockerfile-mode.el"
;;;;;;  "65f27d9ca3113348044ee44e97b6f03e")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/dockerfile-mode-20151003.501/dockerfile-mode.el

(autoload 'dockerfile-build-buffer "dockerfile-mode" "\
Build an image based upon the buffer

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-build-no-cache-buffer "dockerfile-mode" "\
Build an image based upon the buffer without cache

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-mode "dockerfile-mode" "\
A major mode to edit Dockerfiles.
\\{dockerfile-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("Dockerfile.*\\'" . dockerfile-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/dockerfile-mode-20151003.501/dockerfile-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/dockerfile-mode-20151003.501/dockerfile-mode.el")
;;;;;;  (22054 61888 896387 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; dockerfile-mode-autoloads.el ends here
