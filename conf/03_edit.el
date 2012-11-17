(custom-set-variables
 '(truncate-lines           t)              ; truncate line
 '(indent-tabs-mode         nil)            ; don't use tab
 '(make-backup-files        nil)            ; don't make *~ files
 '(delete-auto-save-files   t)              ; delete autosave files
 '(auto-save-default        nil)            ; don't autosave
 '(find-file-visit-truename t)              ; visit truename
 '(read-file-name-completion-ignore-case t) ; for case insensitive find-file
 '(dired-use-ls-dired nil)                  ; dired ls
 '(file-name-coding-system  'utf-8))        ; file-name-coding-system

;; UTF-8 and Japanese Setting
(prefer-coding-system          'utf-8)
(set-locale-environment        nil)
(set-language-environment      "Japanese")
(set-terminal-coding-system    'utf-8)
(set-keyboard-coding-system    'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems    'utf-8)
(set-clipboard-coding-system   'utf-8)

;; find-file-at-point
(ffap-bindings)

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

;; tempbuf.el
(require 'tempbuf)
(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'find-file-hook 'turn-on-tempbuf-mode)

;; auto-save-buffers.el
(require 'auto-save-buffers)
(run-with-idle-timer 10 t 'auto-save-buffers)

;;; gzファイルも編集できるようにする
(auto-compression-mode t)
