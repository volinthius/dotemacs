(use-package flycheck
  :ensure t)

(use-package flycheck-pyflakes
  :ensure t
  :init (add-hook 'python-mode-hook 'flycheck-mode))
