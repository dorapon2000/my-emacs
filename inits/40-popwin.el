;;; 40-popwin.el

(require 'popwin)
;; おまじない（よく分かってない、、）
(setq display-buffer-function 'popwin:display-buffer)
;; ポップアップを画面下に表示
(setq popwin:popup-window-position 'bottom)
;; google-translate.elの翻訳バッファをポップアップで表示させる
(push '("*Google Translate*") popwin:special-display-config)
