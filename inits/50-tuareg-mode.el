;;;50-tuareg-mode.el
;;for ocaml

(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'tuareg-run-ocaml "tuareg" "startup a Caml toplevel" t)
(global-set-key (kbd "<f4>") 'tuareg-run-ocaml)
(autoload 'camldebug "camldebug" "Run the Caml debugger." t)
