;;; 10-elscreen-separate-buffer-list.el
;; なぜか動いてないから退避
(require 'elscreen-separate-buffer-list)
(elscreen-separate-buffer-list-mode)
(setq elscreen-prefix-key (kbd "C-z"))
(elscreen-start)
(elscreen-persist-mode 1)
(elscreen-separate-buffer-list-mode 1)
