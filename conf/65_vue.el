;;; Vue html
(add-to-list 'auto-mode-alist '("\\.vue$" . vue-mode))

(eval-after-load 'vue-mode
  '(add-hook 'vue-mode-hook #'add-node-modules-path))
(flycheck-add-mode 'javascript-eslint 'vue-mode)
(flycheck-add-mode 'javascript-eslint 'vue-html-mode)
(flycheck-add-mode 'javascript-eslint 'css-mode)
(add-hook 'vue-mode-hook 'flycheck-mode)

(with-eval-after-load 'editorconfig
  (add-to-list 'editorconfig-indentation-alist
               '(vue-mode css-indent-offset
                          js-indent-level
                          sgml-basic-offset
                          ssass-tab-width
                          )))
