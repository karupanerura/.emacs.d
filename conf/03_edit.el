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

;; find-file-at-point
;; (ffap-bindings)

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

;; align.el
(require 'align)

;; tramp.el
(require 'tramp)

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
