(use-package lsp-mode
  :ensure t)

(use-package php-mode
  :ensure t
  :config
  (lsp-mode t))

(provide 'lang-php)
