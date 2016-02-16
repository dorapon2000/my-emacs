;;;03_auto-install.el

(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
(require 'auto-install)
;(auto-install-update-emacswiki-package-name t)
;emacswikiに接続できないというエラーが発生したため、一時的な解決としてコメントアウト
(auto-install-compatibility-setup)
