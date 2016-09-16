;;; 10-elscreen.el
;;
 

(require 'elscreen)
(elscreen-set-prefix-key "\C-z")
(if window-system
    (define-key elscreen-map "\C-z" 'iconify-or-deiconify-frame)
    (define-key elscreen-map "\C-z" 'suspend-emacs))
(elscreen-start)
