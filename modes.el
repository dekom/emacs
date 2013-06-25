;;; package --- Compliation file for other modes not individually separated
;;; Commentary:
;;; Code:

;; Asciidoc
(require 'doc-mode)
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'doc-mode))

;;; modes.el ends here
