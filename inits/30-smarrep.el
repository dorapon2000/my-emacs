;;;30-smarrep.el
;;バッファの幅を調整

(require 'smartrep)
(smartrep-define-key global-map "C-x"
		     '(("{" . shrink-window-horizontally)
		       ("}" . enlarge-window-horizontally)))
