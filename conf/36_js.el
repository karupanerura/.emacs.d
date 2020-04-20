(require 'js-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))

(add-hook 'js-mode-hook
	  '(lambda()
             (setq js-indent-level 2)
             (setq js-expr-indent-offset 2)
             (setq indent-tabs-mode nil)))

