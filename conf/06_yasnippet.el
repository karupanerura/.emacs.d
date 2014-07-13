(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"
                         "~/.emacs.d/local-snippets"))
(custom-set-variables '(yas-trigger-key "TAB"))
(define-key yas-minor-mode-map (kbd "C-x : i") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x : n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-x : v") 'yas-visit-snippet-file)
(yas-global-mode 1)
