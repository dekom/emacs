;;; package --- Customize how Emacs contents are displaced and changed
;;; Commentary:
;;;

;;; Code:

;;; Visual ;;;
(global-hl-line-mode 1) ;; highlight current line
(show-paren-mode 1) ;; highlight parentheses pairs

(require 'linum)
(global-linum-mode 1) ;; Display line numbers

;; GUI
;; - remove tool bar and scroll bar
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Prevent splash screen
(setq inhibit-splash-screen t)

;; Theme
(load-theme 'solarized-light t)

;;; White Spacing ;;;
;; Set columns to be 80 width and highlight characters past that width
(setq-default column-number-mode t)
(setq fill-column 80)
(setq-default auto-fill-mode t)

(require 'whitespace)
(setq whitespace-line-column 80) ;; highlight past column defined by fill-column
(setq whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook 'whitespace-mode)

;; Set tab width to 4 and replace tabs with spaces
(setq tab-width 4)
(setq indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq c-default-style "ellemtel")

;; Remove trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; theme.el ends here
