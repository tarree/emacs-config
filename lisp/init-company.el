(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

(use-package company-lsp
  :commands company-lsp)

(use-package company-jedi
  :ensure t)

(provide 'init-company)
