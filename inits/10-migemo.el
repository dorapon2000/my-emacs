;;; 10-migemo.el
;;; いくつ検索されたかを表示してくれるやつには日本語は表示されない。

(when (and (executable-find "cmigemo")
	   (require 'migemo nil t))
  (setq migemo-options '("-q" "--emacs"))

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (load-library "migemo")
  (migemo-init)
  )

