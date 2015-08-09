;;; 10-save-visited-files.el
;;; なぜか動いてないから退避

;;; tramp(remote)ファイルは復元しない
(setq save-visited-files-ignore-tramp-files t)
(turn-on-save-visited-files-mode)
