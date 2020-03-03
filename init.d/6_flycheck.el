;;; 6_flycheck.el --- flycheck

;;; Commentary:

;; Import flycheck et al.

;;; Code:

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  (flycheck-add-next-checker 'python-flake8 'python-pylint))

(add-to-list
 'load-path
 (concat (getenv "GOPATH") "/src/github.com/dougm/goflymake/"))
(require 'go-flymake)

(add-to-list
 'load-path
 (concat (getenv "GOPATH") "/src/github.com/dougm/goflymake/"))
(require 'go-flycheck)

;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:

;;; 6_flycheck.el ends here
