;;; Localeに合わせた環境の設定
(set-locale-environment nil)
;; UTF-8 and Japanese Setting
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(setq default-input-method 'japanese-anthy)

(setq load-path (cons "~/.emacs.d/elisp" load-path))

(setq temporary-file-directory "~/.emacs.d/tmp")

(require 'cl)
;; 問い合わせを簡略化 yes/no を y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; package.el
(require 'package)

;;リポジトリにMelpa/Marmaladeを追加
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;;インストールするディレクトリを指定
(setq package-user-dir (concat user-emacs-directory "vendor/elpa"))

;;インストールしたパッケージにロードパスを通してロードする
(package-initialize)

;; perl-mode
(add-to-list 'auto-mode-alist '("\\.[pP][LlMm]$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.t$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.cgi$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.psgi$" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . perl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . perl-mode))

;; xs-mode
(require 'xs-mode)
(add-to-list 'auto-mode-alist '("\\.xs$" . xs-mode))

;; kolon-mode
(require 'kolon-mode)
(add-to-list 'auto-mode-alist '("\\.tx$" . kolon-mode))

;; tt-mode
(require 'tt-mode)

;; html-tt-mode
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist
      (cons
       '("\\.html$" . html-helper-mode) auto-mode-alist))
(require 'html-tt)
(add-hook 'html-helper-mode-hook 'html-tt-load-hook)

;; jsx-mode
(require 'jsx-mode)
(add-to-list 'auto-mode-alist '("\\.jsx$" . jsx-mode))

;; apache-mode(from package.el)
(add-to-list 'auto-mode-alist '("apache/conf/.+?\\.conf$" . apache-mode))
(add-to-list 'auto-mode-alist '("dev/apache\\.conf$" . apache-mode))
(add-to-list 'auto-mode-alist '("apache/[0-9.]+\\.conf$" . apache-mode))
(add-to-list 'auto-mode-alist '("apache-local\\.conf$" . apache-mode))

;; gitconfig-mode(from package.el)
(add-to-list 'auto-mode-alist '("git/config$" . gitconfig-mode))
(add-to-list 'auto-mode-alist '("\\.gitconfig$" . gitconfig-mode))

;; crontab-mode(from package.el)
(add-to-list 'auto-mode-alist '("crontab/[^/]+$" . crontab-mode))
(add-to-list 'auto-mode-alist '("cron.d/[^/]+$" . crontab-mode))
(add-to-list 'auto-mode-alist '("crontab$" . crontab-mode))

;; js2-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; nginx-mode(from package.el)
(add-to-list 'auto-mode-alist '("nginx/[^/]+$" . nginx-mode))
(add-to-list 'auto-mode-alist '("nginx/conf/[^/]+$" . nginx-mode))

;; php-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

;; go-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))

;; haml-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

;; haskell-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))

;; python-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))

;; lua-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))

;; less-css-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.less$" . less-css-mode))

;; sass-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; scss-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

;; scala-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))

;; ssh-config-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.ssh/config$" . ssh-config-mode))
(add-to-list 'auto-mode-alist '("ssh/ssh_config$" . ssh-config-mode))

;; yaml-mode(from package.el)
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; zencoding-mode(from package.el)
(when (require 'zencoding-mode nil t)
  (setq zencoding-block-tags
        (append (list
                 "article"
                 "section"
                 "aside"
                 "nav"
                 "figure"
                 "address"
                 "header"
                 "footer")
                zencoding-block-tags))
  (setq zencoding-inline-tags
        (append (list
                 "textarea"
                 "small"
                 "time" "del" "ins"
                 "sub"
                 "sup"
                 "i" "s" "b"
                 "ruby" "rt" "rp"
                 "bdo"
                 "iframe" "canvas"
                 "audio" "video"
                 "ovject" "embed"
                 "map"
                 )
                zencoding-inline-tags))
  (setq zencoding-self-closing-tags
        (append (list
                 "wbr"
                 "object"
                 "source"
                 "area"
                 "param"
                 "option"
                 )
                zencoding-self-closing-tags))
  (add-hook 'html-helper-mode-hook 'zencoding-mode)
  (define-key zencoding-mode-keymap (kbd "C-c C-m") 'zencoding-expand-yas)
)

;; pod-mode
(require 'pod-mode)
(add-to-list 'auto-mode-alist
             '("\\.pod$" . pod-mode))
(add-hook 'pod-mode-hook
          '(lambda () (progn
                        (font-lock-mode)
                        (auto-fill-mode 1)
                        (flyspell-mode 1)
                        )))

;; align.el
(require 'align)

;; tramp
(require 'tramp)

;; flymake
(require 'flymake)
(defun flymake-create-temp-intemp (file-name prefix)
  "Return file name in temporary directory for checking FILE-NAME.
This is a replacement for `flymake-create-temp-inplace'. The
difference is that it gives a file name in
`temporary-file-directory' instead of the same directory as
FILE-NAME.

For the use of PREFIX see that function.

Note that not making the temporary file in another directory
\(like here) will not if the file you are checking depends on
relative paths to other files \(for the type of checks flymake
makes)."
  (unless (stringp file-name)
    (error "Invalid file-name"))
  (or prefix
      (setq prefix "flymake"))
  (let* ((name (concat
                (file-name-nondirectory
                 (file-name-sans-extension file-name))
                "_" prefix))
         (ext  (concat "." (file-name-extension file-name)))
         (temp-name (make-temp-file name nil ext))
         )
    (flymake-log 3 "create-temp-intemp: file=%s temp=%s" file-name temp-name)
    temp-name))

;; set-perl5lib.el
(require 'set-perl5lib)

;; flymake-error-format
(set-face-background 'flymake-errline "red4")
(set-face-foreground 'flymake-errline "black")
(set-face-background 'flymake-warnline "yellow")
(set-face-foreground 'flymake-warnline "black")
;; http://d.hatena.ne.jp/xcezx/20080314/1205475020
(defun flymake-display-err-minibuf ()
  "Displays the error/warning for the current line in the minibuffer"
  (interactive)
  (let* ((line-no             (flymake-current-line-no))
         (line-err-info-list  (nth 0 (flymake-find-err-info flymake-err-info line-no)))
         (count               (length line-err-info-list)))
    (while (> count 0)
      (when line-err-info-list
        (let* ((file       (flymake-ler-file (nth (1- count) line-err-info-list)))
               (full-file  (flymake-ler-full-file (nth (1- count) line-err-info-list)))
               (text (flymake-ler-text (nth (1- count) line-err-info-list)))
               (line       (flymake-ler-line (nth (1- count) line-err-info-list))))
          (message "[%s] %s" line text)))
      (setq count (1- count)))))

;; flymake for perl
;; http://unknownplace.org/memo/2007/12/21#e001
(defvar flymake-perl-err-line-patterns
  '(("\\(.*\\) at \\([^ \n]+\\) line \\([0-9]+\\)[,.\n]" 2 3 nil 1)))
(defconst flymake-allowed-perl-file-name-masks
  '(("\\.pl$"    flymake-perl-init)
    ("\\.pm$"   flymake-perl-init)
    ("\\.psgi$" flymake-perl-init)
    ("\\.t$"    flymake-perl-init)))
(defun flymake-perl-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-intemp))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "perl" (list "-wc" local-file))))
(defun flymake-perl-load ()
  (interactive)
  (defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
    (setq flymake-check-was-interrupted t))
  (ad-activate 'flymake-post-syntax-check)
  (setq flymake-allowed-file-name-masks (append flymake-allowed-file-name-masks flymake-allowed-perl-file-name-masks))
  (setq flymake-err-line-patterns flymake-perl-err-line-patterns)
  (set-perl5lib)
  (flymake-mode t))
(add-hook 'perl-mode-hook 'flymake-perl-load)

;; auto start flymake
(add-hook 'find-file-hook 'flymake-find-file-hook)

;;; タブ幅の設定
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default perl-basic-offset 4)
(setq-default html-basic-offset 2)
(setq-default js2-basic-offset  2)

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

;;; diredを便利にする
(require 'dired-x)

;; perldoc -lm した結果を開く
(defun  perl-find-module ()
  (interactive)
  (let
      (end begin module path-to-module)
    (save-excursion
      (setq begin (save-excursion (skip-chars-backward "a-zA-Z0-9_:") (point)))
      (setq end (save-excursion (skip-chars-forward "a-zA-Z0-9_:") (point)))
      (setq module (buffer-substring begin end))
      )
    (shell-command (concat "perldoc -lm " module) "*perldoc*")
    (save-window-excursion
      (switch-to-buffer "*perldoc*")
      (setq end (point))
      (setq begin (save-excursion (beginning-of-line) (point)))
      (setq path-to-module (buffer-substring begin end))
      )
    (message path-to-module)
    (find-file path-to-module)
))

;; install-elisp.el
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp")

;; auto-async-byte-compile.el
(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-execlude-files-regexp "/tmp/auto-async-byte-compile")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;; tempbuf.el
(require 'tempbuf)
(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'find-file-hook 'turn-on-tempbuf-mode)

;; auto-save-buffers.el
(require 'auto-save-buffers)
(run-with-idle-timer 10 t 'auto-save-buffers)

;; yascroll.el(from package.el)
(require 'yascroll)
(global-yascroll-bar-mode 1)

;; yasnippet.el(from package.el)
(setq yas/jit-compile-dir "~/emacs.d/yas-jit")
(setq yas/compile-directory "~/emacs.d/tmp/yasnippet")
(yas-global-mode 1)
(yas/load-directory "~/.emacs.d/local-snippets")
(custom-set-variables '(yas-trigger-key "TAB"))
(define-key yas-minor-mode-map (kbd "C-x : i") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x : n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-x : v") 'yas-visit-snippet-file)

;; server.el
(require 'server)
(unless (server-running-p)
  (server-start)
  (iconify-frame)
)
(defun iconify-emacs-when-server-is-done()
  (unless server-clients (iconify-frame)))
(add-hook 'server-done-hook 'iconify-emacs-when-server-is-done)

;; C-x C-cで出る
(define-key ctl-x-map (kbd "C-c") 'server-edit)

;; C-lでundo
(global-set-key (kbd "C-l") 'undo)

;; M-x exitで終了
(defalias 'exit 'save-buffers-kill-emacs)
