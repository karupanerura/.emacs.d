;;; editorconfig-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "editorconfig" "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig.el"
;;;;;;  "55bbeb5a97cd676f8d1f14c64f022281")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig.el

(autoload 'editorconfig-find-current-editorconfig "editorconfig" "\
Find the closest .editorconfig file for current file.

\(fn)" t nil)

(autoload 'editorconfig-display-current-properties "editorconfig" "\
Display EditorConfig properties extracted for current buffer.

\(fn)" t nil)

(autoload 'editorconfig-apply "editorconfig" "\
Apply EditorConfig properties for current buffer.
This function ignores `editorconfig-exclude-modes' and always
applies available properties.

\(fn)" t nil)

(defvar editorconfig-mode nil "\
Non-nil if Editorconfig mode is enabled.
See the `editorconfig-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `editorconfig-mode'.")

(custom-autoload 'editorconfig-mode "editorconfig" nil)

(autoload 'editorconfig-mode "editorconfig" "\
Toggle EditorConfig feature.
When enabled EditorConfig properties will be applied to buffers
when first visiting files or changing major modes if the major
mode is not listed in `editorconfig-exclude-modes'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "editorconfig-conf-mode" "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-conf-mode.el"
;;;;;;  "8e42f329bb6f37de6feab181ff7ad8fc")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-conf-mode.el

(autoload 'editorconfig-conf-mode "editorconfig-conf-mode" "\
Major mode for editing .editorconfig files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/\\.editorconfig\\'" . editorconfig-conf-mode))

;;;***

;;;### (autoloads nil "editorconfig-core" "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-core.el"
;;;;;;  "8d5d1097af43d38eeb96516c119d5348")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-core.el

(autoload 'editorconfig-core-get-nearest-editorconfig "editorconfig-core" "\
Return path to .editorconfig file that is closest to DIRECTORY.

\(fn DIRECTORY)" nil nil)

(autoload 'editorconfig-core-get-properties "editorconfig-core" "\
Get EditorConfig properties for FILE.
If FILE is not given, use currently visiting file.
Give CONFNAME for basename of config file other than .editorconfig.
If need to specify config format version, give CONFVERSION.

This functions returns alist of properties.  Each element will look like
'(KEY . VALUE) .

\(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

(autoload 'editorconfig-core-get-properties-hash "editorconfig-core" "\
Get EditorConfig properties for FILE.
If FILE is not given, use currently visiting file.
Give CONFNAME for basename of config file other than .editorconfig.
If need to specify config format version, give CONFVERSION.

This function is almost same as `editorconfig-core-get-properties', but returns
hash object instead.

\(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

;;;***

;;;### (autoloads nil "editorconfig-fnmatch" "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-fnmatch.el"
;;;;;;  "c03ca189a6b3bee27f40b8a0e6b093a0")
;;; Generated autoloads from ../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-fnmatch.el

(autoload 'editorconfig-fnmatch-p "editorconfig-fnmatch" "\
Test whether NAME match PATTERN.

Matching ignores case if `case-fold-search' is non-nil.

PATTERN should be a shell glob pattern, and some zsh-like wildcard matchings can
be used:

*           Matches any string of characters, except path separators (/)
**          Matches any string of characters
?           Matches any single character
\[name]      Matches any single character in name
\[^name]     Matches any single character not in name
{s1,s2,s3}  Matches any of the strings given (separated by commas)
{min..max}  Matches any number between min and max

\(fn NAME PATTERN)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-autoloads.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-conf-mode.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-core-handle.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-core.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-fnmatch.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig-pkg.el"
;;;;;;  "../../../../../.emacs.d/vendor/elpa/editorconfig-20171107.301/editorconfig.el")
;;;;;;  (23063 53665 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; editorconfig-autoloads.el ends here
