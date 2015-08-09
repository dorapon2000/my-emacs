;;;10-tramp.el
;;emacs上でsshやscpが使える

(require 'tramp)
(setq tramp-default-method "scp")
