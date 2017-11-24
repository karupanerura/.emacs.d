(custom-set-variables
 '(truncate-lines           t)              ; truncate line
 '(indent-tabs-mode         nil)            ; don't use tab
 '(make-backup-files        nil)            ; don't make *~ files
 '(delete-auto-save-files   t)              ; delete autosave files
 '(auto-save-default        nil)            ; don't autosave
 '(find-file-visit-truename t)              ; visit truename
 '(read-file-name-completion-ignore-case t) ; for case insensitive find-file
 '(dired-use-ls-dired nil)                  ; dired ls
 '(file-name-coding-system  'utf-8)         ; file-name-coding-system
 '(default-input-method 'japanese-anthy))   ; default-input-method

;; editorconfig
(load "editorconfig")

;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; auto-complete-etags
(require 'auto-complete-etags)
(add-to-list 'ac-sources 'ac-source-etags)

;; find-file-at-point
;; (ffap-bindings)

;; editorconfig
(require 'editorconfig)
(editorconfig-mode 1)

;; show parentheses
(show-paren-mode t)

;; ヴィジュアルベル無効
(setq visible-bell nil)

;; ビープ音も無効
(setq ring-bell-function '(lambda ()))

;; インデントはスペースで
(setq-default indent-tabs-mode nil)

;; 一行ずつスクロール
(setq scroll-step 1)

;; loclfileを作らない
(setq create-lockfiles nil)

;; バッファの自動再読み込み
(global-auto-revert-mode 1)

;; align.el
(require 'align)

;; tramp.el
(require 'tramp)

;; midnight.el
(require 'midnight)

;; cua-mode
(require 'cua-base)
(cua-mode t)
(setq cua-enable-cua-keys nil) ; そのままだと C-x が切り取りになってしまったりするので無効化

;; C-lで短形選択
(define-key global-map (kbd "C-l") 'cua-set-rectangle-mark)

;; C-c cでコメントアウト
(define-key global-map (kbd "C-c c") 'comment-or-uncomment-region)

;; gzファイルも編集できるようにする
(auto-compression-mode t)

;; projectile
(require 'projectile)
(custom-set-variables
 '(projectile-project-root-files
   '(".projectile"        ; projectile project marker
     "Gemfile"            ; Bundler file
     "package.json"       ; npm package file
     "cpanfile"           ; CPAN dependencies for Perl applications
     ".git"               ; Git VCS root dir
     )))
(projectile-global-mode)

;; upcase-region/downcase-regionがつかいたい
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
