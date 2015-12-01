;;;10-multi-term.el

(require 'multi-term)
(setq multi-term-program shell-file-name)

(add-to-list 'term-unbind-key-list '"M-x")

(add-hook 'term-mode-hook
	  '(lambda ()
	     ;; C-h を term 内文字削除にする
	     (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
	     ;; C-y を term 内ペーストにする
	     (define-key term-raw-map (kbd "C-y") 'term-paste)
	     ))

(global-set-key (kbd "C-c t") '(lambda ()
				 (interactive)
				 (multi-term)))

;;キーで起動した時に複数起動でなく既存のバッファを選択したい場合
;; (global-set-key (kbd "C-c t") '(lambda ()
;; 				 (interactive)
;; 				 (if (get-buffer "*terminal<1>*")
;; 				     (switch-to-buffer "*terminal<1>*")
;; 				   (multi-term))))

(global-set-key (kbd "C-c n") 'multi-term-next)
(global-set-key (kbd "C-c p") 'multi-term-prev)




;; コピーモード
(setenv "LC_ALL" "C")
(defvar multi-term-cursor-point)
(setq multi-term-program shell-file-name)
(add-hook 'term-mode-hook
	  '(lambda ()
	     (define-key term-raw-map (kbd "C-y") 'term-paste)
	     (define-key term-raw-map (kbd "ESC ESC") 'term-send-raw)
	     (define-key term-raw-map [delete] 'term-send-raw)
	     (define-key term-raw-map (kbd "C-c C-c") 'toggle-term-view)
	     (define-key term-raw-map (kbd "C-r") 'term-send-reverse-search-history)
	     (define-key term-raw-map (kbd "C-p") 'term-send-up)
	     (define-key term-raw-map (kbd "C-n") 'term-send-down)
	     (define-key term-raw-map (kbd "C-c C-z") 'term-stop-subjob)))

(defun toggle-term-view () (interactive)
       (cond ((eq major-mode 'term-mode)
	      (fundamental-mode)
	      (view-mode-enable)
	      (local-set-key (kbd "C-c C-c") 'toggle-term-view)
	      (setq multi-term-cursor-point (point)))
	     ((eq major-mode 'fundamental-mode)
	      (term-mode)
	      (view-mode-disable)
	      (goto-char multi-term-cursor-point)
	      (multi-term-internal))))
