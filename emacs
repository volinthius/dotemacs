(setq default-directory "~/")

(dolist (file-name (directory-files "~/.emacs-config/init.d" t "\\.el"))
  (load-file file-name))
