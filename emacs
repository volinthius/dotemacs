;;; emacs --- Main Emacs configuration file

;;; Commentary:

;; See title

;;; Local Variables:
;;; mode: emacs-lisp
;;; End:

;;; Code:

(setq default-directory "~/")

(dolist (file-name (directory-files "~/.emacs-config/init.d" t "\\.el"))
  (load-file file-name))

(if (file-exists-p "~/.emacs-site")
    (load-file "~/.emacs-site"))

;;; emacs ends here
