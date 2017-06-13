(use-package multi-web-mode
  :ensure t
  :init
  (setq mweb-default-major-mode 'html-mode)
  (setq mweb-tags
        '((js-mode "<script[^>]*>" "</script>")
          (css-mode "<style[^>]>" "</style>")))
  (setq mweb-filename-extensions '("html"))
  (multi-web-global-mode 1)
  )
