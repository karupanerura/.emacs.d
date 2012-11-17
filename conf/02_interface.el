;; 行数、列数を表示
(line-number-mode t)
(column-number-mode t)

;; フリンジ(左右の折り返し表示領域)はいらない
(fringe-mode 'none)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; 色つける
(global-font-lock-mode t)
(setq-default transient-mark-mode t)
(require 'font-lock)

;; スクロールバー非表示
(scroll-bar-mode nil)

;; yascroll.el(from package.el)
(require 'yascroll)
(global-yascroll-bar-mode 1)

;; カーソル点滅しないように
(blink-cursor-mode 0)

;; アクティブでないバッファではカーソルを出さない
(setq cursor-in-non-selected-windows nil)

;; 縦分割とかでも行を折り返す
(setq truncate-partial-width-windows nil)

;; dired
(require 'dired)
(define-key dired-mode-map (kbd "r")   'wdired-change-to-wdired-mode)
(define-key dired-mode-map (kbd "C-o") nil)
