;;; package --- Specific setup for python development
;;; Commentary:

;;; Code:
;; Auto Complete
(add-hook 'python-mode-hook 'jedi:setup)
;; In order to setup jedi: make sure to have virtualenv installed and then use
;; el-get to install jedi
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;;; py.el ends here
