(use-package yaml-mode
  :ensure t
  :mode "\\.yml$")

(require 'openapi-yaml-mode)
(setq openapi-yaml-use-yaml-mode-syntax-highlight nil)
