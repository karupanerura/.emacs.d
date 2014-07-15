;; flycheck
(require 'flycheck)
(global-flycheck-mode t)
(define-key flycheck-mode-map (kbd "M-n") 'flycheck-next-error)
(define-key flycheck-mode-map (kbd "M-p") 'flycheck-previous-error)
(add-hook 'after-init-hook #'global-flycheck-mode)
