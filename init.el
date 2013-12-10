;;; package --- entry to customizing emacs
;;; Commentary:
;;; Goal of the file is customize Emacs in logical structure.
;;; This file is the entrance of the customization

;;; Code:

;; System Setup
(setenv "SHELL" "/bin/bash")

;; (setq debug-on-error t)

(setq x-select-enable-clipboard t)

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; Package Management
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.e")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
(el-get 'sync)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; (exec-path-from-shell-initialize)

;; Better Navigation with IDO
(require 'ido)
(ido-mode t)
(setq-default ido-enable-flex-matching t)
(setq-default ido-show-dot-for-dired t)

;; auto update buffer if file is changed on disk (and buffer not dirty)
(global-auto-revert-mode 1)

;; have outlining everywhere
(allout-mode)

;; Syntax highlighting
(global-font-lock-mode 1)

;; uniquely name buffers
(require 'uniquify)

;; Load other files
(load "~/.emacs.d/mykeys.el")
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/programming.el")
(load "~/.emacs.d/py.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/schm.el")
;;; init.el ends here

;;; Usual disabled commands enabled
(put 'narrow-to-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(electric-pair-mode t)
 '(quack-programs
   (quote
    ("mzscheme" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi")))
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
