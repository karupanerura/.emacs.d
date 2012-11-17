;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(custom-set-variables
 '(ac-use-menu-map             t)
 '(ac-dictionary-directories   '("~/.emacs.d/ac-dict"))
 '(ac-dwim                     t)
 '(ac-auto-start               3))

(define-key ac-menu-map (kbd "C-n")   'ac-next)
(define-key ac-menu-map (kbd "C-p")   'ac-previous)
(define-key ac-menu-map (kbd "M-TAB") nil)
(ac-set-trigger-key "TAB")

(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline-p 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")
