(use-package virtualenvwrapper
  :ensure t
  :init (setq venv-location "~/virtualenv"))

(use-package jedi
  :ensure t
  :init
  (add-hook 'python-mode-hook 'jedi:setup))
