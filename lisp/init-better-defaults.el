;;(abbrev-mode t)
;;(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
;;					    ("48do" "donald")
;;					    ))

(global-linum-mode t)

(global-auto-revert-mode t) ;;reflesh soon

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

;; electric-pair
(electric-pair-mode 1)
(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
(show-paren-mode t)

;; Syntax symbol
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; Syntax symbol
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; Syntax line
;;(global-hl-line-mode t)

(delete-selection-mode t);; Mark set

;; No backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Menu Chinese  
(set-language-environment 'Chinese-GB)

;; utf-8
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(provide 'init-better-defaults)
