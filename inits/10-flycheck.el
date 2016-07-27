;;; 10-flycheck.el
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
;;flycheck-next-errorで次のエラー箇所に
;;flycheck-previous-errorで前のエラー箇所に飛べる

;;; flycheck-pos-tip.elを使ってポップアップ表示にする
(require 'flycheck-pos-tip)
(with-eval-after-load 'flycheck-pos-tip
  (flycheck-pos-tip-mode))
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
