(require 'js-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))

(add-hook 'js-mode-hook
	  '(lambda()
	     (setq tab-width 2)))

