;; yasnippet.el(from package.el)
(setq yas/jit-compile-dir "~/emacs.d/yas-jit")
(setq yas/compile-directory "~/emacs.d/tmp/yasnippet")
(yas-global-mode 1)
(yas/load-directory "~/.emacs.d/local-snippets")
(custom-set-variables '(yas-trigger-key "TAB"))
(define-key yas-minor-mode-map (kbd "C-x : i") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x : n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-x : v") 'yas-visit-snippet-file)