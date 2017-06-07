(setq default-directory "~/")

(dolist (file-name (directory-files "~/.emacs-config/init.d" t "\\.el"))
  (load-file file-name))

(if (file-exists-p "~/.emacs-site")
    (load-file "~/.emacs-site"))
