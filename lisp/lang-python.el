;;; package --- python configs
;;; Commentary:
;;; Contains my python configs

;;; Code:

(use-package python
  :ensure t
  :mode ("\\.py" . python-mode)
  :config
  (add-hook 'python-mode-hook 'yapf-mode)
  (add-hook 'before-save-hook 'py-isort-before-save)
  (add-hook 'python-mode-hook (lambda ()
                                (require 'sphinx-doc)
                                (sphinx-doc-mode t))))

(use-package lsp-jedi
  :ensure t
  :config
  (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-disabled-clients 'pyls)))


(use-package pip-requirements
  :ensure t
  :config
  (add-hook 'pip-requirements-mode-hook #'pip-requirements-auto-complete-setup))

(use-package py-isort
  :ensure t
  :config)

(use-package importmagic
    :ensure t
    :config
    (add-hook 'python-mode-hook 'importmagic-mode)
    (setq importmagic-python-interpreter "python"))

;; poetry
(use-package poetry
  :ensure t
  :config
  (add-hook 'python-mode-hook 'poetry-tracking-mode))

;; lsp Python
(use-package yapfify
  :ensure t
  :defer t
  :hook (python-mode . yapf-mode))

(use-package sphinx-doc
  :ensure t)


;;(use-package pyenv-mode
;;  :if
;;  (executable-find "pyenv")
;;  :init
;;  (add-to-list 'exec-path "~/.pyenv/shims")
;;  (setenv "WORKON_HOME" "~/.pyenv/versions/")
;;  :config
;;  (pyenv-mode)
;;  :bind
;;  ("C-x p e" . pyenv-activate-current-project))

(defun pyenv-init()
  (setq global-pyenv (replace-regexp-in-string "\n" "" (shell-command-to-string "pyenv global")))
  (message (concat "Setting pyenv version to " global-pyenv))
  (pyenv-mode-set global-pyenv)
  (defvar pyenv-current-version nil global-pyenv))

(defun pyenv-activate-current-project ()
  "Automatically activates pyenv version if .python-version file exists."
  (interactive)
  (f-traverse-upwards
   (lambda (path)
     (message path)
     (let ((pyenv-version-path (f-expand ".python-version" path)))
       (if (f-exists? pyenv-version-path)
          (progn
            (setq pyenv-current-version (s-trim (f-read-text pyenv-version-path 'utf-8)))
            (pyenv-mode-set pyenv-current-version)
            (pyvenv-workon pyenv-current-version)
            (message (concat "Setting virtualenv to " pyenv-current-version))))))))

(provide 'lang-python)
;;; lang-python.el ends here
