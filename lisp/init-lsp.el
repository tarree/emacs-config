(use-package tree-sitter
  :ensure t)

(use-package tree-sitter-langs
  :ensure t)

(use-package lsp-mode
  :ensure t
  :defer t
  :diminish lsp-mode
  :config
  (add-hook 'prog-mode-hook #'lsp)
  ;;(add-hook 'python-mode-hook 'flycheck-mode)
  ;;(add-hook 'python-mode-hook 'my-python-flycheck-setup)
  :commands (lsp lsp-deferred)
  :custom
  ;; what to use when checking on-save. "check" is default, I prefer clippy
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-rust-analyzer-server-display-inlay-hints t)
  :hook
  (elixir-mode . lsp)
  (emacs-lisp-mode-hook . lsp)
  (python-mode . lsp-deferred)
  (rustic-mode . lsp-deferred)
  (php-mode . lsp-deferred)
  (svelte-mode . lsp-deferred)
  :init
  (setq js-indent-level 2)
  (setq-default indent-tabs-mode nil)
  (setq lsp-ui-doc-position 'top)
  (add-to-list 'exec-path "/home/sam/.elixir-ls/release/")
  (add-to-list 'exec-path "/home/sam/.cargo/bin/"))

(use-package lsp-ui
  :ensure t
  :after (lsp-mode)
  :commands lsp-ui-mode
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  )
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(add-to-list 'lsp-language-id-configuration '("\\.el\\'" . "lisp"))
(add-to-list 'lsp-language-id-configuration '("\\.hcl\\'" . "hcl"))

(provide 'init-lsp)
