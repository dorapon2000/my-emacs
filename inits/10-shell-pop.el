;;;10-shell-pop.el

(require 'shell-pop)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(google-translate-default-source-language "en")
 '(google-translate-default-target-language "ja")
 '(helm-ff-auto-update-initial-value nil)
 '(shell-pop-shell-type
   (quote
    ("ansi-term" "*shell-pop-ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell)))))
 '(shell-pop-term-shell "/usr/local/bin/zsh")
 '(shell-pop-universal-key "C-t")
 '(shell-pop-window-height 30)
 '(shell-pop-window-position "bottom"))

;; multi-term に対応
(add-to-list 'shell-pop-internal-mode-list '("multi-term" "*terminal<1>*" '(lambda () (multi-term))))
(shell-pop-set-internal-mode "multi-term")
