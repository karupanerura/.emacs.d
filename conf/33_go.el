;; go-mode(from package.el)
(require 'go-mode)
(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))

;; company-go
(require 'company-go)
(add-hook 'go-mode-hook (lambda()
                          (company-mode)
                          (set (make-local-variable 'company-backends) '(company-go))))

;; go-eldoc
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

;; auto goimports
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; flycheck-modeを有効化してシンタックスエラーを検知
(add-hook 'go-mode-hook 'flycheck-mode)

;; key-binds
(add-hook 'go-mode-hook
          (lambda()
            (setq c-basic-offset 4)
            (setq indent-tabs-mode t)
            (local-set-key (kbd "M-.") 'godef-jump)
            (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c a") 'go-import-add)
            (local-set-key (kbd "C-c C-d") 'godoc)))
