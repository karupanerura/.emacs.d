;; load-path
(add-to-list 'load-path "~/.emacs.d/elisp")

;; package.el
(require 'package)

;;リポジトリにMelpa/Marmaladeを追加
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;;インストールするディレクトリを指定
(setq package-user-dir (concat user-emacs-directory "vendor/elpa"))

;;インストールしたパッケージにロードパスを通してロードする
(package-initialize)

(require 'init-loader)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start 3)
 '(ac-dictionary-directories (quote ("~/.emacs.d/ac-dict")))
 '(ac-dwim t)
 '(ac-use-menu-map t)
 '(auto-save-default nil)
 '(coffee-args-compile (quote ("-c" "--bare")))
 '(coffee-tab-width 2)
 '(cperl-close-paren-offset -4)
 '(cperl-indent-parens-as-block t)
 '(cperl-indent-subs-specially nil)
 '(default-input-method (quote japanese-anthy))
 '(delete-auto-save-files t)
 '(dired-use-ls-dired nil)
 '(file-name-coding-system (quote utf-8) t)
 '(find-file-visit-truename t)
 '(indent-tabs-mode nil)
 '(init-loader-show-log-after-init nil)
 '(make-backup-files nil)
 '(markdown-command "Markdown.pl")
 '(markdown-command-needs-filename t)
 '(package-selected-packages
   (quote
    (zencoding-mode yaxception yaml-mode yagist tt-mode swift-mode ssh-config-mode scss-mode scala-mode2 sass-mode python-mode pod-mode plenv php-mode perl6-mode perl-completion packed nginx-mode markdown-mode lua-mode log4e less-css-mode kolon-mode jsx-mode init-loader helm-projectile helm-perldoc helm-go-package groovy-mode gradle-mode fuzzy flycheck-perl6 editorconfig dockerfile-mode docker-tramp docker cperl-mode coffee-mode auto-save-buffers-enhanced auto-install auto-complete-exuberant-ctags auto-complete-etags auto-complete-c-headers auto-async-byte-compile ac-js2 ac-helm)))
 '(projectile-project-root-files
   (quote
    (".projectile" "Gemfile" "package.json" "cpanfile" ".git")))
 '(read-file-name-completion-ignore-case t)
 '(truncate-lines t)
 '(yas-trigger-key "TAB"))
(init-loader-load "~/.emacs.d/conf")
(init-loader-load "~/.emacs.d/conf/local")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
