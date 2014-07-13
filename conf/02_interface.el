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

;; カーソル点滅しないように
(blink-cursor-mode 0)

;; 時間を表示
(setq-default display-time-string-forms
              '(year "-" month "-" day "(" dayname ")"
                     24-hours ":" minutes
                     (if mail " Mail" "")))
(display-time-mode t)
(display-time)

;; アクティブでないバッファではカーソルを出さない
(setq cursor-in-non-selected-windows nil)

;; 縦分割とかでも行を折り返す
(setq truncate-partial-width-windows nil)

;; dired
(require 'dired)
(define-key dired-mode-map (kbd "r")   'wdired-change-to-wdired-mode)
(define-key dired-mode-map (kbd "C-o") nil)
