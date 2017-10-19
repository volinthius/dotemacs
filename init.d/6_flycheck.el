;;; 6_flycheck.el --- flycheck

;;; Commentary:

;; Import flycheck et al.

;;; Code:

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  (flycheck-add-next-checker 'python-flake8 'python-pylint))

;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:

;;; 6_flycheck.el ends here
