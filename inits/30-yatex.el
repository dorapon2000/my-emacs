;;; 30-YaTeX mode.el

(add-to-list 'load-path "~/.emacs.d/elisp/yatex")
(setq auto-mode-alist
    (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq tex-command "platex")
(setq dviprint-command-format "dvipdfmx %s")
(setq dvi2-command "open")
(defvar YaTeX-dvi2-command-ext-alist
  '(("[agx]dvi\\|dviout\\|emacsclient" . ".dvi")
   ("ghostview\\|gv" . ".ps")
   ("acroread\\|pdf\\|Preview\\|TeXShop\\|Skim\\|evince\\|apvlv\\|open" . ".pdf")))
