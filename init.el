;;; init-loader
;;; inits以下の設定ファイルを読み込む
;;; OSによって読み込むファイルを自動で切り替える

(package-initialize)
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
