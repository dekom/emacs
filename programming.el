;;; package --- General programming packages
;;; Commentary:

;;; Code:

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; syntax checking on the fly
(add-hook 'after-init-hook 'global-flycheck-mode)

;; Wrap-region for punctuation
(require 'wrap-region)
(wrap-region-mode 1)

;; Eclipse integration
(require 'eclim)
(global-eclim-mode)

;; Autocomplete for C/C++
(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)

(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(my-ac-config)

;; evil
;;(require 'evil)
;;(evil-mode 1)
;;; programming.el ends here
