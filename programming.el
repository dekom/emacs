;;; package --- General programming packages
;;; Commentary:

;;; Code:

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; syntax checking on the fly
(add-hook 'after-init-hook #'global-flycheck-mode)

;; pair completion
(require 'flex-autopair)
(flex-autopair-mode 1)

;; Wrap-region for punctuation
(require 'wrap-region)
(wrap-region-mode 1)

;;; programming.el ends here
