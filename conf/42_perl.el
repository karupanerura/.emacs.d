;;; Perl
(require 'flymake)
;; set-perl5lib.el
(require 'set-perl5lib)

;; cperl-mode from package-install for cperl-indent-subs-specially
;; http://d.hatena.ne.jp/syohex/20120818/1345302707
;; (package-install 'cperl-mode)
(defalias 'perl-mode 'cperl-mode)
(add-to-list 'auto-mode-alist '("\\.[pP][LlMm]$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.t$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.cgi$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.psgi$" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . perl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . perl-mode))
(add-to-list 'flymake-allowed-file-name-masks '("\\.t\\'"    flymake-perl-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.psgi\\'" flymake-perl-init))
(eval-after-load "cperl-mode"
  '(progn
     (cperl-set-style "PerlStyle")
     (define-key cperl-mode-map (kbd "C-m") 'newline-and-indent)
     (define-key cperl-mode-map (kbd "(") nil)
     (define-key cperl-mode-map (kbd "{") nil)
     (define-key cperl-mode-map (kbd "[") nil)
     (define-key cperl-mode-map (kbd "M-n") 'flymake-goto-next-error)
     (define-key cperl-mode-map (kbd "M-p") 'flymake-goto-prev-error)
     (define-key cperl-mode-map (kbd "C-c t") 'perl-run-prove)))
(custom-set-variables
 '(cperl-indent-parens-as-block t)
 '(cperl-close-paren-offset     -4)
 '(cperl-indent-subs-specially  nil)
 '(cperl-array-face             'font-lock-variable-name-face)
 '(cperl-hash-face              'font-variable-name-face))

;; perl-completion
;; (auto-install-from-url "https://raw.github.com/imakado/perl-completion/master/perl-completion.el")
(autoload 'perl-completion-mode "perl-completion" nil t)
(eval-after-load "perl-completion"
  '(progn
     (defadvice flymake-start-syntax-check-process (around flymake-start-syntax-check-perl-lib-path activate)
       (when perl-completion-mode
         (plcmp-with-set-perl5-lib ad-do-it)))
     (define-key plcmp-mode-map (kbd "M-TAB") nil)
     (define-key plcmp-mode-map (kbd "M-C-o") 'plcmp-cmd-smart-complete)))

;; commands
(require 'vc-git)
(defun perl-run-prove ()
  (interactive)
  (let* ((filename (buffer-file-name))
         (compile-command (concat "cd " (vc-git-root filename) "; prove -v --nocolor " filename)))
    (call-interactively 'compile)))

;; perl-eval
(defun perl-eval (beg end)
  "Run selected region as Perl code"
  (interactive "r")
  (save-excursion
  (shell-command-on-region beg end "perl"))
)

;; perldoc -lm した結果を開く
(defun perl-find-module ()
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

;; hook
(defun my-cperl-mode-hook ()
  (interactive)
  (defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
    (setq flymake-check-was-interrupted t))
  (ad-activate 'flymake-post-syntax-check)
  (setq flymake-allowed-file-name-masks (append flymake-allowed-file-name-masks flymake-allowed-perl-file-name-masks))
  (setq flymake-err-line-patterns flymake-perl-err-line-patterns)
  (set-perl5lib)
  (perl-completion-mode t)
  (flymake-mode t)
  (when (boundp 'auto-complete-mode)
    (eval
     '(progn
        (defvar ac-source-my-perl-completion
          '((candidates . plcmp-ac-make-cands)))
        (add-to-list 'ac-sources 'ac-source-my-perl-completion)
        (add-to-list 'ac-sources 'ac-source-dictionary))))
  (set-face-italic-p 'cperl-hash-face nil)
  (set-face-background 'cperl-hash-face nil)
  (set-face-background 'cperl-array-face nil)
  (set-face-foreground 'font-lock-function-name-face "magenta4"))
(add-hook 'cperl-mode-hook 'my-cperl-mode-hook)
