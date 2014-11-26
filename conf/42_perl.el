;;; Perl
(require 'projectile)
(require 'helm-perldoc)
(require 'flycheck)
(require 'plenv)
(require 'vc-git)
(require 'yasnippet)

;; cperl-mode from package-install for cperl-indent-subs-specially
;; http://d.hatena.ne.jp/syohex/20120818/1345302707
;; (package-install 'cperl-mode)
(defalias 'perl-mode 'cperl-mode)
(add-to-list 'auto-mode-alist '("\\.[pP][LlMm]$" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.t$" .    cperl-mode))
(add-to-list 'auto-mode-alist '("\\.cgi$" .  cperl-mode))
(add-to-list 'auto-mode-alist '("\\.psgi$" . cperl-mode))
(add-to-list 'auto-mode-alist '("cpanfile" . cperl-mode))

(custom-set-variables
 '(cperl-indent-parens-as-block t)
 '(cperl-close-paren-offset     -4)
 '(cperl-indent-subs-specially  nil))

(defun gen-perl-options ()
  (let ((options '()))
    (when (projectile-project-p)
      (push (concat "-I" (projectile-project-root)) options)
      (push (concat "-I" (projectile-expand-root "lib")) options)
      (push (concat "-I" (projectile-expand-root "site_perl")) options)
      (when (projectile-verify-file "cpanfile")
        (push (concat "-I" (projectile-expand-root "local/lib/perl5")) options))
      options)
    options))

;; commands
(defun perl-run-prove ()
  (interactive)
  (let* ((filename (buffer-file-name))
         (compile-command (concat "cd " (vc-git-root filename) "; prove -v --nocolor " filename)))
    (call-interactively 'compile)))

;; utility
(defun perl-guess-package ()
  (let
      ((filename (buffer-file-name)))
    (setq filename (cond ((string-match "^.*/site_perl/" filename) (replace-regexp-in-string "^.*/site_perl/" "" filename))
                         ((string-match "^.*/lib/" filename) (replace-regexp-in-string "^.*/lib/" "" filename))
                         ((string-match "^.*/5\.[0-9]*\.[0-9]*/" filename) (replace-regexp-in-string "^.*/5\.[0-9]*\.[0-9]*/" "" filename))
                       (t nil)))
    (replace-regexp-in-string "\.pm$" "" (replace-regexp-in-string "/" "::" filename))))

;; perl-eval
(defun perl-eval (beg end)
  "Run selected region as Perl code"
  (interactive "r")
  (save-excursion
  (shell-command-on-region beg end "perl")))

;; perldoc -lm した結果を開く
(defun perl-find-module ()
  (interactive)
  (let
      (end begin module perldoc-path command path-to-module)
    (save-excursion
      (setq begin (save-excursion (skip-chars-backward "a-zA-Z0-9_:") (point)))
      (setq end (save-excursion (skip-chars-forward "a-zA-Z0-9_:") (point)))
      (setq module (buffer-substring begin end)))
    (setq perldoc-path
          (replace-regexp-in-string "\n+$" "" (shell-command-to-string "plenv which perldoc")))
    (setq command
          (mapconcat 'identity (append (cons "perl" (gen-perl-options))
                                       (list perldoc-path "-lm" module)) " "))
    (setq path-to-module
          (replace-regexp-in-string "\n+$" "" (shell-command-to-string command)))
    (if (file-readable-p path-to-module)
        (find-file path-to-module))))

;; perl-completion
(autoload 'perl-completion-mode "perl-completion" nil t)
(eval-after-load "perl-completion"
  '(progn
     (defvar ac-source-my-perl-completion
       '((candidates . plcmp-ac-make-cands)))
     (add-to-list 'ac-sources 'ac-source-my-perl-completion)
     (add-to-list 'ac-sources 'ac-source-dictionary)))

(eval-after-load "cperl-mode"
  '(progn
     (cperl-set-style "PerlStyle")

     ;; helm-perldoc
     (helm-perldoc:setup)

     ;; key binding
     (define-key cperl-mode-map (kbd "C-m") 'newline-and-indent)
     (define-key cperl-mode-map (kbd "C-c t") 'perl-run-prove)
     (define-key cperl-mode-map (kbd "C-x p") 'perl-find-module)

     ;; flycheck
     (flycheck-define-checker my-perl
       "A Perl syntax checker using the Perl interpreter."
       :command ("perl" "-w" "-c"
                 (eval (gen-perl-options))
                 source-original)
       :error-patterns ((error line-start (minimal-match (message)) " at " (file-name) " line " line (or "." (and ", " (zero-or-more not-newline))) line-end))
       :modes (perl-mode cperl-mode)
       :next-checkers (my-perl-perlcritic))
     (flycheck-define-checker my-perl-perlcritic
       "A Perl syntax checker using Perl::Critic."
       :command ("perlcritic" "--no-color" "--verbose" "%f:%l:%c:%s:%m (%e)\n"
                 (option "--severity" flycheck-perlcritic-verbosity flycheck-option-int)
                 source-original)
       :error-patterns ((info    line-start (file-name) ":" line ":" column ":" (any "1")   ":" (message) line-end)
                        (warning line-start (file-name) ":" line ":" column ":" (any "234") ":" (message) line-end)
                        (error   line-start (file-name) ":" line ":" column ":" (any "5")   ":" (message) line-end))
       :modes (cperl-mode perl-mode))

     ;; faces
     (set-face-attribute 'cperl-array-face nil
                         :background nil :weight 'normal)
     (set-face-attribute 'cperl-hash-face nil
                         :foreground "DarkOliveGreen3"
                         :background nil
                         :weight 'normal :italic nil)))

;; hook
(autoload 'helm-perldoc:carton-setup "helm-perldoc" nil t)
(autoload 'flycheck-select-checker "flycheck" nil t)
(defun my-cperl-mode-hook ()
  "Hook function for `cperl-mode'."
  (helm-perldoc:carton-setup)
  (flycheck-select-checker 'my-perl)
  (perl-completion-mode t)
  (yas-minor-mode t)
  (add-to-list 'flycheck-checkers 'my-perl)
  (add-to-list 'flycheck-checkers 'my-perl-perlcritic))
(add-hook 'cperl-mode-hook 'my-cperl-mode-hook)
