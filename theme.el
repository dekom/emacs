;;; package --- Customize how Emacs contents are displaced and changed
;;; Commentary:
;;;

;;; Code:

;;; Visual ;;;
(global-hl-line-mode 1) ;; highlight current line
(show-paren-mode 1) ;; highlight parentheses pairs

;; (require 'linum)
;;(global-linum-mode 1) ;; Display line numbers

;; GUI
;; - remove tool bar and scroll bar
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Prevent splash screen
(setq-default inhibit-splash-screen t)

;; Theme
(load-theme 'solarized-dark t)
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-aalto-light)

;;; White Spacing ;;;
;; Set columns to be 80 width and highlight characters past that width
(setq-default column-number-mode t)
(setq-default fill-column 80)

(require 'whitespace)
(setq-default whitespace-line-column 80) ;; highlight past column defined by fill-column
(setq-default whitespace-style '(face lines-tail newline trailing))

(add-hook 'prog-mode-hook 'whitespace-mode)

;; Visually wrap to 80 characters
(global-visual-line-mode t)

(global-set-key (kbd "C-c q") 'auto-fill-mode)

;; Set tab width to 8 and replace tabs with spaces
;; (setq-default tab-width 8)
;; (setq-default indent-tabs-mode nil)
;; (setq-default c-basic-offset 8)
(setq-default c-default-style "linux")

;; Remove trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Font size
(set-face-attribute 'default nil :height 100)

;; Powerline
(require 'powerline)
(powerline-default-theme)

;; Highlight TODO and FIXME in comments
(require 'fic-ext-mode)
(defun add-something-to-mode-hooks (mode-list something)
  "helper function to add a callback to multiple hooks"
  (dolist (mode mode-list)
    (add-hook (intern (concat (symbol-name mode) "-mode-hook")) something)))

(add-something-to-mode-hooks '(c++ tcl emacs-lisp python text markdown latex) 'fic-ext-mode)

;; Cursor
(blink-cursor-mode 1)

;;; theme.el ends here
