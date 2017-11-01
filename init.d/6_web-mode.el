;;; 6_web-mode.el --- web-mode

;;; Commentary:

;; Import web-mode and configure.

;;; Code:

(use-package web-mode
  :ensure t
  :mode "\\.html$"
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  (setq web-mode-style-padding 2)
  (setq web-mode-script-padding 2)
  )

;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:

;;; 6_web-mode.el ends here
