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
 '(init-loader-show-log-after-init nil))
(init-loader-load "~/.emacs.d/conf")
(init-loader-load "~/.emacs.d/conf/local")
