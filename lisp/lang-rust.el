;; ---------------------------------------------------------------------- [ Rust ]
(use-package toml-mode
  :ensure t)

(use-package rust-mode
  :after (company lsp-mode)
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'flycheck-mode)
  (add-hook 'rust-mode-hook
            (lambda () (add-hook 'before-save-hook 'rust-format-buffer))))

;; Add keybindings for interacting with Cargo
(use-package cargo
  :ensure t
  :hook (rust-mode . cargo-minor-mode))

(setq lsp-rust-server 'rls)

(provide 'lang-rust)
