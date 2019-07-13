(require 'json-mode)
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
