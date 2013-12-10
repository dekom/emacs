;;; package --- Compliation file for other modes not individually separated
;;; Commentary:
;;; Code:

;; Asciidoc
(require 'doc-mode)
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'doc-mode))

;; TeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-master t)
(setq TeX-PDF-mode t)
;; (setq latex-run-command "pdflatex")

;; Golang
(add-hook 'before-save-hook 'gofmt-before-save)

;; Clisp setup
(setq-default inferior-lisp-program "/usr/bin/clisp")
(require 'slime)
(slime-setup)
;;; modes.el ends here
