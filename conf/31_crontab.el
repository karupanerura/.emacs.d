;; crontab-mode(from package.el)
(add-to-list 'auto-mode-alist '("crontab/[^/]+$" . crontab-mode))
(add-to-list 'auto-mode-alist '("cron.d/[^/]+$" . crontab-mode))
(add-to-list 'auto-mode-alist '("crontab$" . crontab-mode))
