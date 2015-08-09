;;; 10-tree-undo.el

(add-to-list 'load-path "~/.emacs.d/elisp/undo-tree")
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))
