;; start server
;; for emacsclient command
(require 'server)
(when (not (eq t (server-running-p server-name)))
  (server-start))

;; M-x exitで終了
(defalias 'exit 'save-buffers-kill-emacs)
