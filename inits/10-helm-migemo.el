(require 'helm-migemo)
;;; この修正が必要
(eval-after-load "helm-migemo"
  '(defun helm-compile-source--candidates-in-buffer (source)
     (helm-aif (assoc 'candidates-in-buffer source)
	 (append source
		 `((candidates-in-buffer                    . ,(or (cdr it)
								   (lambda ()
								     ;; Do not use `source' because other plugins
								     ;; (such as helm-migemo) may change it
								     (helm-candidates-in-buffer (helm-get-current-source)))))
		   (volatile) (match identity)))
       source)))
