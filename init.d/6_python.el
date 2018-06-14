(use-package virtualenvwrapper
  :ensure t
  :init (setq venv-location "~/virtualenv"))

(use-package jedi
  :ensure t
  :init
  (add-hook 'python-mode-hook 'jedi:setup))

(use-package jedi-direx
  :ensure t
  :init
  (bind-key (kbd "C-c x") 'jedi-direx:pop-to-buffer)
  (add-hook 'jedi-mode-hook 'jedi-direx:setup))
