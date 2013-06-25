;;; package --- entry to customizing emacs
;;; Commentary:
;;; Goal of the file is customize Emacs in logical structure.
;;; This file is the entrance of the customization

;;; Code:

;; System Setup
(setq x-select-enable-clipboard t)

(add-to-list 'load-path "~/.emacs.d")

(setq exec-path (cons "/usr/local/git/bin" exec-path)) ;; for el-get
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

;; Better Navigation with IDO
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-show-dot-for-dired t)

;; Load other files
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/programming.el")
(load "~/.emacs.d/py.el")
(load "~/.emacs.d/modes.el")
;;; init.el ends here

;;; Usual disabled commands enabled
(put 'narrow-to-region 'disabled nil)
