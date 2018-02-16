;;; 0_start.el --- Startpoint

;;; Commentary:

;; See title

;;; Local Variables:
;;; byte-compile-warnings: (not free-vars)
;;; End:

;;; Code:

;; get packages
(setq library-files
      '(("use-package.el" . "https://raw.githubusercontent.com/jwiegley/use-package/master/use-package.el")
        ("bind-key.el" . "https://raw.githubusercontent.com/jwiegley/use-package/master/bind-key.el")
        ("robot-mode.el" . "https://raw.githubusercontent.com/heimojuh/robot-mode/master/robot-mode.el")
        ("debian-changelog-mode.el" . "https://raw.githubusercontent.com/errge/emacs-goodies-el/master/usr/share/emacs/site-lisp/dpkg-dev-el/debian-changelog-mode.el")
      ))

(unless (file-directory-p "~/.emacs-config/lib")
  (make-directory "~/.emacs-config/lib"))

(dolist (pair library-files)
	      (unless (locate-file (car pair) '("~/.emacs-config/lib"))
		(url-copy-file (cdr pair) (concat "~/.emacs-config/lib/" (car pair)))))

(add-to-list 'load-path "~/.emacs-config/lib")

;; variables
(setq inhibit-splash-screen t)
(setq make-backup-files nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default x-select-enable-clipboard t)

;; modes
(tool-bar-mode 0)
(menu-bar-mode 0)
(hl-line-mode t)
(show-paren-mode t)
(size-indication-mode t)
(column-number-mode t)

;; global key bindings
(global-set-key [f7] 'eval-buffer)
(global-set-key [f6] 'package-list-packages)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; enable xterm mouse mode
(if (not window-system) (xterm-mouse-mode t))

;;; 0_start.el ends here
