;;; emacs --- Main Emacs configuration file

;;; Commentary:

;; See title

;;; Local Variables:
;;; mode: emacs-lisp
;;; End:

;;; Code:

(setq default-directory "~/")

(if (file-exists-p "~/.emacs-site-init")
    (load-file "~/.emacs-site-init"))

(dolist (file-name (directory-files "~/.emacs-config/init.d" t "\\.el"))
  (load-file file-name))

(if (file-exists-p "~/.emacs-site-config")
    (load-file "~/.emacs-site-config"))

;;; emacs ends here
