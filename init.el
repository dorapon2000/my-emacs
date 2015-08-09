(require 'package)
(setq package-user-dir "~/.emacs.d/elpa/") ;; これは好みに合わせて
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
