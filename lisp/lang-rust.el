;; ---------------------------------------------------------------------- [ Rust ]

;; REQUIRED INSTALLATIONS
;; $ git clone https://github.com/rust-analyzer/rust-analyzer.git
;; $ cd rust-analyzer
;; $ cargo xtask install --server # will install rust-analyzer into $HOME/.cargo/bin

(use-package toml-mode
  :ensure t)

(use-package flycheck-rust
  :ensure t)

;; Add keybindings for interacting with Cargo
(use-package cargo
  :ensure t
  :hook (rust-mode . cargo-minor-mode))

(use-package rustic
  :after (company lsp-mode)
  :ensure t
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status))
  :config
  ;; uncomment for less flashiness
  ;; (setq lsp-eldoc-hook nil)
  ;; (setq lsp-enable-symbol-highlighting nil)
  ;; (setq lsp-signature-auto-activate nil)

  ;; comment to disable rustfmt on save
  (setq rustic-format-on-save nil)
  (setq rustic-lsp-server 'rust-analyzer)
  (add-to-list 'lsp-enabled-clients 'rust-analyzer))

(provide 'lang-rust)
