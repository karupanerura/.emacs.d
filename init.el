;;; Localeに合わせた環境の設定
(set-locale-environment nil)
;; UTF-8 and Japanese Setting
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

(setq default-input-method 'japanese-anthy)

;;; East Asian ambiguous char width問題対策
(utf-translate-cjk-set-unicode-range
 '((#x00a2 . #x00a3)                    ; ¢, £
   (#x00a7 . #x00a8)                    ; §, ¨
   (#x00ac . #x00ac)                    ; ¬
   (#x00b0 . #x00b1)                    ; °, ±
   (#x00b4 . #x00b4)                    ; ´
   (#x00b6 . #x00b6)                    ; ¶
   (#x00d7 . #x00d7)                    ; ×
   (#X00f7 . #x00f7)                    ; ÷
   (#x0370 . #x03ff)                    ; Greek and Coptic
   (#x0400 . #x04FF)                    ; Cyrillic
   (#x2000 . #x206F)                    ; General Punctuation
   (#x2100 . #x214F)                    ; Letterlike Symbols
   (#x2190 . #x21FF)                    ; Arrows
   (#x2200 . #x22FF)                    ; Mathematical Operators
   (#x2300 . #x23FF)                    ; Miscellaneous Technical
   (#x2500 . #x257F)                    ; Box Drawing
   (#x25A0 . #x25FF)                    ; Geometric Shapes
   (#x2600 . #x26FF)                    ; Miscellaneous Symbols
   (#x2e80 . #xd7a3) (#xff00 . #xffef)))

;;; emacs lisp を読み込む
(setq load-path (cons "~/.emacs.d/elisp" load-path))
(setq load-path (cons "~/.emacs.d/elisp/apel" load-path))

;; js2-mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; less-mode
(require 'less-css-mode)
(add-to-list 'auto-mode-alist '("\\.less$" . less-css-mode))

;; xs-mode
(require 'xs-mode)
(add-to-list 'auto-mode-alist '("\\.xs$" . xs-mode))

;; kolon-mode
(require 'kolon-mode)
(add-to-list 'auto-mode-alist '("\\.tx$" . kolon-mode))

;; php-mode
(autoload 'php-mode "php-mode")
(setq auto-mode-alist
      (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)
(add-hook 'php-mode-user-hook
  '(lambda ()
     (setq php-manual-path "/usr/local/share/php/doc/html")
     (setq php-manual-url "http://www.phppro.jp/phpmanual/")))

;;; タブ幅の設定
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default perl-basic-offset 4)
(setq-default html-basic-offset 2)
(setq-default js2-basic-offset  2)

(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\|t\\|cgi\\|psgi\\)\\'" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . perl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . perl-mode))

;; タブ、全角スペースを光らせる
(defface my-face-r-1 '((t (:background "gray15"))) nil)
(defface my-face-b-1 '((t (:background "gray"))) nil)
(defface my-face-b-2 '((t (:background "gray26"))) nil)
(defface my-face-u-1 '((t (:foreground "red" :underline t))) nil)
(defvar my-face-r-1 'my-face-r-1)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode())
  (font-lock-add-keywords
   major-mode
   '(
     ("\t" 0 my-face-b-2 append)
     ("　" 0 my-face-b-2 append)
     ("[ \t]+$" 0 my-face-u-1 append)
     (" [\r]*\n" 0 my-face-r-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)

;;; 対応する括弧を光らせる。
(show-paren-mode 1)
;;; ウィンドウ内に収まらないときだけ括弧内も光らせる。
(setq show-paren-style 'mixed)
;;; 行末の空白を表示
(setq-default show-trailing-whitespace t)
;;; 現在行を目立たせる
(global-hl-line-mode)
;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)
;;; カーソルの位置が何行目かを表示する
(line-number-mode t)
;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;;; バックアップファイルを作らない
(setq backup-inhibited t)
;;; gzファイルも編集できるようにする
(auto-compression-mode t)

;;; ファイル名が重複していたらディレクトリ名を追加する。
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;;; 自動セーブするようにする
(require 'auto-save-buffers)
(run-with-idle-timer 0.5 t 'auto-save-buffers)

;;; diredを便利にする
(require 'dired-x)

;;; diredから"r"でファイル名をインライン編集する
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;;; diredで"V"を入力すると
;;; そのディレクトリで使っているバージョン管理システム用のモードを起動します。
(defun dired-vc-status (&rest args)
  (interactive)
  (cond ((file-exists-p (concat (dired-current-directory) ".svn"))
         (svn-status (dired-current-directory)))
        ((file-exists-p (concat (dired-current-directory) ".git"))
         (magit-status (dired-current-directory)))
        (t
         (message "version controlled?"))))

(define-key dired-mode-map "V" 'dired-vc-status)

;;; 再帰的にgrep
(require 'grep)
(setq grep-command-before-query "grep -nH -r -e ")
(defun grep-default-command ()
  (if current-prefix-arg
      (let ((grep-command-before-target
             (concat grep-command-before-query
                     (shell-quote-argument (grep-tag-default)))))
        (cons (if buffer-file-name
                  (concat grep-command-before-target
                          " *."
                          (file-name-extension buffer-file-name))
                (concat grep-command-before-target " ."))
              (+ (length grep-command-before-target) 1)))
    (car grep-command)))
(setq grep-command (cons (concat grep-command-before-query " .")
                         (+ (length grep-command-before-query) 1)))
