(use-package helm-descbinds
  :ensure t)

(helm-descbinds-mode)
(global-set-key (kbd "C-h b") 'helm-descbinds)

