(add-to-list 'load-path "~/.emacs-config/lib")

(setq inhibit-splash-screen t)

(tool-bar-mode 0)
(menu-bar-mode 0)
(hl-line-mode t)
(show-paren-mode t)
(size-indication-mode t)
(column-number-mode t)

(global-set-key [f7] 'eval-buffer)
