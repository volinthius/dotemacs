;;; emacs --- Main Emacs configuration file

;;; Commentary:

;; See title

;;; Local Variables:
;;; mode: emacs-lisp
;;; End:

;;; Code:

(setq default-directory "~/")

(if (file-exists-p "~/.emacs-config/emacs-site-init.el")
    (load-file "~/.emacs-config/emacs-site-init.el"))

(dolist (file-name (directory-files "~/.emacs-config/init.d" t "\\.el"))
  (load-file file-name))

(if (file-exists-p "~/.emacs-config/emacs-site-config.el")
    (load-file "~/.emacs-config/emacs-site-config.el"))

;;; emacs ends here
