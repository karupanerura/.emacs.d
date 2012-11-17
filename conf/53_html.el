;; html-tt-mode
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist
      (cons
       '("\\.html$" . html-helper-mode) auto-mode-alist))
(require 'html-tt)
(add-hook 'html-helper-mode-hook 'html-tt-load-hook)

;; auto-complete
(require 'auto-complete)
(defun my-html-mode-hook ()
  (when (boundp 'auto-complete-mode)
    (add-to-list 'ac-modes 'html-mode)
    (add-to-list 'ac-sources 'ac-source-dictionary)))
(add-hook 'html-helper-mode-hook 'my-html-mode-hook)

;;; タブ幅の設定
(setq-default html-basic-offset 2)
