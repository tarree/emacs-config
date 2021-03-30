;; -------------------------------------------------------------------- [ java ]
(use-package lsp-java
  :ensure t
  :config
  (add-hook 'java-mode-hook
	    (lambda ()
	      (setq-local company-backends (list 'company-lsp))))

  (add-hook 'java-mode-hook 'lsp-java-enable)
  (add-hook 'java-mode-hook 'flycheck-mode)
  (add-hook 'java-mode-hook 'company-mode)
  (add-hook 'java-mode-hook 'lsp-ui-mode))

(use-package groovy-mode
  :ensure t)

(use-package jenkinsfile-mode
  :ensure t)

(provide 'lang-java)
