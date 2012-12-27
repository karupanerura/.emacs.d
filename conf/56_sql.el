;; sql-mode
(require 'sql)
(add-hook 'sql-mode-hook
          (lambda ()
            (sql-highlight-mysql-keywords)))
