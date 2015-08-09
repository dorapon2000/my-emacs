;;; 40-google-translate.el
;;popwin.elが必要

(require 'google-translate)
;; キーバインドの設定（お好みで）
(global-set-key [(C x) (C t)] 'google-translate-at-point)
;; 翻訳のデフォルト値を設定（en -> ja）
