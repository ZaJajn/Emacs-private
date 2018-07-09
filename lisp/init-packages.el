(require 'cl)

(when (>= emacs-major-version 24)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; Add Packages
(defvar donald/packages '(
			  ;; --- Auto-completion ---
			  ;; popup
			  ;; async
			  helm
			  auto-complete
			  spacemacs-theme
			  
			  ) "Default packages")

(setq package-selected-packages donald/packages)

(defun donald/packages-installed-p ()
  (loop for pkg in donald/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (donald/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg donald/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; theme
(load-theme 'spacemacs-dark t)

;; (global-company-mode 1)

;; ac
(ac-config-default)
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.5)
(define-key ac-completing-map "\C-n" 'ac-next)
(define-key ac-completing-map "\C-p" 'ac-previous)

(provide 'init-packages)
