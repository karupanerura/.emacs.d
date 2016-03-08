;; go-mode(from package.el)
(require 'go-mode)
(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))

(require 'go-autocomplete)
(add-to-list 'ac-modes 'go-mode)

;; goflymake
(require 'go-flymake)
(setenv "GOPATH" (expand-file-name "~/.go"))

;; go-eldoc
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)


;; key-binds
(add-hook 'go-mode-hook
          '(lambda()
             (setq c-basic-offset 4)
             (setq indent-tabs-mode t)
             (local-set-key (kbd "M-.") 'godef-jump)
             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
             (local-set-key (kbd "C-c a") 'go-import-add)
             (local-set-key (kbd "C-c d") 'godoc)))
