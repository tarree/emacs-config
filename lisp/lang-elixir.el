;; ---------------------------------------------------------------------- [ Elixir ]
;; Debugging for Elixir
(require 'dap-elixir)



;; Setup code checkers
(use-package flycheck-credo
  :ensure t
  :after 'flycheck
  :config
  (flycheck-credo-setup))

(use-package flycheck-dialyxir
  :ensure t
  :after 'flycheck
  :config
  (flycheck-dialyxir-setup))

;; Setup elixir mode
(use-package elixir-mode
  :after (company lsp-mode)
  :ensure t
  :config
  ;; Enable flycheck for elixir
  (add-hook 'elixir-mode-hook 'flycheck-mode)
  (add-to-list 'lsp-enabled-clients 'elixir-ls)
  ;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode.
  (add-hook 'elixir-mode-hook
            (lambda () (add-hook 'before-save-hook 'elixir-format nil t))))

(defvar lsp-elixir--config-options (make-hash-table))

(add-hook 'lsp-after-initialize-hook
          (lambda ()
            (lsp--set-configuration `(:elixirLS, lsp-elixir--config-options))))

;; Disable file watcher for deps folder
(push "[/\\\\]deps$" lsp-file-watch-ignored)
(push "[/\\\\]_build$" lsp-file-watch-ignored)
(push "[/\\\\]\\.elixir_ls$" lsp-file-watch-ignored)

(provide 'lang-elixir)
