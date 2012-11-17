;; js2-mode(from package.el)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

;;; タブ幅の設定
(setq-default js2-basic-offset  2)

(eval-after-load "js2-mode"
  '(progn
     ;; key config
     (define-key js2-mode-map (kbd "C-m") 'newline-and-indent)
     (define-key js2-mode-map (kbd "M-n") 'next-error)
     (define-key js2-mode-map (kbd "M-p") 'previous-error)))

;; hook
(defun my-js2-mode-hook ()
  (when (boundp 'auto-complete-mode)
    (eval
     '(add-to-list 'ac-sources 'ac-source-dictionary)))
  (set-face-foreground 'js2-function-param-face "SeaGreen3"))
(add-hook 'js2-mode-hook 'my-js2-mode-hook)
