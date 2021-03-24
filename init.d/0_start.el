;;; 0_start.el --- Startpoint

;;; Commentary:

;; See title

;;; Local Variables:
;;; byte-compile-warnings: (not free-vars)
;;; End:

;;; Code:

;; get packages
(setq library-files
      '(("bind-key.el" . "https://raw.githubusercontent.com/jwiegley/use-package/master/bind-key.el")
        ("robot-mode.el" . "https://raw.githubusercontent.com/heimojuh/robot-mode/master/robot-mode.el")
        ("debian-changelog-mode.el" . "https://raw.githubusercontent.com/errge/emacs-goodies-el/master/usr/share/emacs/site-lisp/dpkg-dev-el/debian-changelog-mode.el")
        ("highlight-chars.el" . "https://www.emacswiki.org/emacs/download/highlight-chars.el")
        ("openapi-yaml-mode.el" . "https://raw.githubusercontent.com/magoyette/openapi-yaml-mode/master/openapi-yaml-mode.el")
      ))

(unless (file-directory-p "~/.emacs-config/lib")
  (make-directory "~/.emacs-config/lib"))

(dolist (pair library-files)
	      (unless (locate-file (car pair) '("~/.emacs-config/lib"))
		(url-copy-file (cdr pair) (concat "~/.emacs-config/lib/" (car pair)))))

(add-to-list 'load-path "~/.emacs-config/lib")

;; add locally installed go to path if it exists
(if (file-exists-p "/usr/local/go/bin")
    (progn
      (setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/go/bin/"))
      (add-to-list 'exec-path "/usr/local/go/bin/")))

;; variables
(setq create-lockfiles nil)
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

;; Set GOPATH for goflymake
(setenv "GOPATH" (concat (expand-file-name "~") "/go"))

;;; 0_start.el ends here
