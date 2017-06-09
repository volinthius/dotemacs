(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     '("melpa-stable" . "http://melpa-stable.org/packages/"))
(package-initialize)

(require 'use-package)
