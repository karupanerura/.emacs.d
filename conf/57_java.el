(require 'cc-mode)

(add-hook 'java-mode-hook
  (lambda ()
    (setq indent-tabs-mode nil)
    (setq c-basic-offset 4)))

(defun java-guess-package ()
  (let
      ((filename (buffer-file-name)))
    (setq filename (cond ((string-match "^.*/src/" filename) (replace-regexp-in-string "^.*/src/" "" filename))
                         (t nil)))
    (replace-regexp-in-string "/" "." (replace-regexp-in-string "/[^/]*\.java" "" filename))))

(defun java-guess-classname ()
  (let
      ((filename (buffer-file-name)))
    (replace-regexp-in-string "^.*/" "" (replace-regexp-in-string "\.java" "" filename))))

