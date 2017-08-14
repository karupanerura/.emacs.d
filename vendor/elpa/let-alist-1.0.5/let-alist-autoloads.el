;;; let-alist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "let-alist" "../../../../../.emacs.d/vendor/elpa/let-alist-1.0.5/let-alist.el"
;;;;;;  "0dfa9f62b5f4f995a03ad8efffddd431")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/let-alist-1.0.5/let-alist.el

(autoload 'let-alist "let-alist" "\
Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq \\='title alist)))
        (.body  (cdr (assq \\='body alist)))
        (.site  (cdr (assq \\='site alist)))
        (.site.contents (cdr (assq \\='contents (cdr (assq \\='site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

\(fn ALIST &rest BODY)" nil t)

(put 'let-alist 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/let-alist-1.0.5/let-alist-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/let-alist-1.0.5/let-alist.el")
;;;;;;  (22929 1628 797932 194000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; let-alist-autoloads.el ends here
