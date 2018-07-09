;; google-c-style  
(add-to-list 'load-path "/home/donald/.emacs.d/site-lisp/google-style")  
(require 'google-c-style)  
(add-hook 'c-mode-common-hook 'google-set-c-style)  
(defun my-c-mode-hook ()  
  (setq c-basic-offset 4          ;; tab for C  
        default-tab-width 8))     ;; default tab  
(add-hook 'c-mode-hook 'my-c-mode-hook)  


(provide 'init-c-c++)
