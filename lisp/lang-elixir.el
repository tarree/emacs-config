;; ---------------------------------------------------------------------- [ Elixir ]
;; Debugging for Elixir
(require 'dap-elixir)
(dap-ui-mode)
(dap-mode)

;; Setup code checkers
(eval-after-load 'flycheck
  '(flycheck-dialyxir-setup))
(eval-after-load 'flycheck
  '(flycheck-credo-setup))

;; Code for adding flycheck checkers for elixir
(defun my-elixir-flycheck-setup ()
  (add-to-list 'flycheck-checkers 'lsp)
  ;; Dialyxir and credo must be added as required dependencies to mix.exs
  (flycheck-add-next-checker 'lsp 'elixir-dialyxir)
  (flycheck-add-next-checker 'lsp 'elixir-credo))

;; Setup elixir mode
(use-package elixir-mode
  :after (company lsp-mode)
  :ensure t
  :config
  ;; Enable flycheck for elixir
  (add-hook 'elixir-mode-hook 'flycheck-mode)
  (add-hook 'elixir-mode-hook 'my-elixir-flycheck-setup)
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
