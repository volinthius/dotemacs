(use-package go-mode
  :ensure t
  :mode "\\.go$")

(if (executable-find "go")
    (start-process "go-get-goflymake"
                   nil "go" "get" "-u" "github.com/dougm/goflymake"))
