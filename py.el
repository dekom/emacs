;;; package --- Specific setup for python development
;;; Commentary:

;;; Code:
;; Auto Complete
(add-hook 'python-mode-hook 'jedi:setup)
;; In order to setup jedi: make sure to have virtualenv installed and then use
;; el-get to install jedi
(setq-default jedi:setup-keys t)
(setq-default jedi:complete-on-dot t)

;; Setup the correct python interpreter
(setq-default python-shell-interpreter "python3")


;;; py.el ends here
