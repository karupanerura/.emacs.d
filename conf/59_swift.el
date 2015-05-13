;; swift
(add-to-list 'auto-mode-alist '("\\.swift$" . swift-mode))
(autoload 'flycheck-select-checker "flycheck" nil t)
(defun my-swift-mode-hook ()
  "Hook function for 'swift-mode'."
  (add-to-list 'flycheck-checkers 'swift))
(add-hook 'swift-mode-hook 'my-swift-mode-hook)
