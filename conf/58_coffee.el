;; coffeescript
(custom-set-variables
 '(coffee-tab-width 2)
 '(coffee-args-compile '("-c" "--bare")))

(eval-after-load "coffee-mode"
  '(progn
     (setq whitespace-action '(auto-cleanup))
     (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
     (add-hook 'coffee-after-compile-hook 'sourcemap-goto-corresponding-point)))
