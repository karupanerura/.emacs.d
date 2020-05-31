(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(require 'flycheck)
(require 'eslint-fix)

(setq typescript-indent-level 2)

(require 'tide)
(add-hook 'typescript-mode-hook
          (lambda ()
            (tide-setup)
            (flycheck-mode t)
            (add-node-modules-path)
            (flycheck-select-checker 'javascript-eslint)
            (setq flycheck-check-syntax-automatically '(save mode-enabled))
            (eldoc-mode t)
            (add-hook 'after-save-hook 'eslint-fix nil t)
            (company-mode-on)))
