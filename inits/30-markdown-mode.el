;;; 30-markdown-mode.el
;; http://moonstruckdrops.github.io/blog/2013/03/24/markdown-mode/

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-command "/opt/local/bin/multimarkdown")
;;外部コマンドからプレビューすることできれいに見せる
