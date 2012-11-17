;; markdown-mode(from package.el)
;; to install markdown command (Markdown.pl) :
;; $ cpanm Text::Markdown
(autoload 'markdown-mode "markdown-mode" nil t)

(custom-set-variables
 '(markdown-command                "Markdown.pl")
 '(markdown-command-needs-filename t))

(add-to-list 'auto-mode-alist '("\\.mkdn$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
