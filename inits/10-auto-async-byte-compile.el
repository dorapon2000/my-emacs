;;; 10-auto-async-byte-compile.el
;;; http://d.hatena.ne.jp/rubikitch/20100423/bytecomp
;;; http://fnwiya.hatenablog.com/entry/2015/09/29/233920

(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
