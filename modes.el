;;; package --- Compliation file for other modes not individually separated
;;; Commentary:
;;; Code:

;; Asciidoc
(require 'doc-mode)
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'doc-mode))

;; TeX
(setq-default TeX-auto-save t)
(setq-default TeX-parse-self t)

;;; modes.el ends here
