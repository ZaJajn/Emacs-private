;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "/home/donald/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "/home/donald/.emacs.d/init.el"))

(require 'init-ui)
(require 'init-better-defaults)
(require 'init-packages)
(require 'init-keybindings)
(require 'init-c-c++)
(require 'init-python)
(require 'init-org)

(setq custom-file (expand-file-name "/home/donald/.emacs.d/lisp/custom.el" user-emacs-directory))

(load-file custom-file)
