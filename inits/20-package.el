;;;20-package.el

(require 'package)
;;MELPAを追加
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; Marmaladeを追加
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))
;; 初期化
(package-initialize)
;; load-path
(setq load-path (cons "~/.emacs.d/elisp" load-path))
(setq load-path (cons "~/.emacs.d/elpa" load-path))

;;自動インストール設定
;;サイトにアクセスしてて重いからコメントアウト、新しい端末とかで使うならはずせばいい
;; (require 'cl)

;; (defvar installing-package-list
;;   '(
;;     undo-tree-mode
;;     anzu-mode
;;     helm-mode
;;     shell-pop
;;     auto-complete-mode
;;     hlinum-mode
;;     ))

;; (let ((not-installed (loop for x in installing-package-list
;; 			   when (not (package-installed-p x))
;; 			   collect x)))
;;   (when not-installed
;;     (package-refresh-contents)
;;     (dolist (pkg not-installed)
;;               (package-install pkg))))
