;; OSを判別
(defvar run-linux
  (equal system-type 'gnu/linux))
(defvar run-darwin
  (equal system-type 'darwin))

;; Windowシステムを判別
(defvar run-cli
  (equal window-system nil))
(defvar run-cocoa
  (equal window-system 'ns))
(defvar run-carbon
  (equal window-system 'mac))

;; スタートアップ時のメッセージを抑制
(setq inhibit-startup-message t)

; emacsclient で Buffer `hogehoge' still has clients; kill it? (yes or no) とかいわれるのがうざいのをなおす
; http://aki.issp.u-tokyo.ac.jp/itoh/hiChangeLog/html/2007-04.html#2007-04-09-1
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

;; メニューバーとツールバーoff
(tool-bar-mode 0)
(if (or run-cocoa run-carbon) (menu-bar-mode 1) (menu-bar-mode 0)) ; GUIでは表示

;; リージョンをC-hで削除
(delete-selection-mode 1)

;; C-hでバックスペース
(global-set-key "\C-h" 'delete-backward-char)

;; iswitchb & uniquify
(iswitchb-mode 1)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; 問い合わせを簡略化 yes/no を y/n
(defalias 'yes-or-no-p 'y-or-n-p)
