;;; 10-persp-mode.el
;;;
;;; https://github.com/Bad-ptr/persp-mode.el
;;; http://rubikitch.com/2015/02/13/persp-mode/
;;; 使いづらいのでelscreenを使う

;; 公式githubの設定
;; (with-eval-after-load "persp-mode-autoloads"
;;   (setq wg-morph-on nil) ;; switch off animation
;;   (setq persp-autokill-buffer-on-remove 'kill-weak)
;;     (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))

;; るびきちさんの設定
;; (setq persp-keymap-prefix (kbd "C-z")) ;prefix
;; (setq persp-add-on-switch-or-display t) ;バッファを切り替えたら見えるようにする
;; (persp-mode 1)
;; (defun persp-register-buffers-on-create ()
;;   (interactive)
;;   (dolist (bufname (condition-case _
;; 		       (helm-comp-read
;; 			"Buffers: "
;; 			(mapcar 'buffer-name (buffer-list))
;; 			:must-match t
;; 			:marked-candidates t)
;; 		     (quit nil)))
;;     (persp-add-buffer (get-buffer bufname))))
;; (add-hook 'persp-activated-hook 'persp-register-buffers-on-create)
